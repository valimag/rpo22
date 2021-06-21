import React, { Component } from 'react';
import {connect} from "react-redux"
import {Form} from "react-bootstrap"
import BackendService from "../services/BackendService";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";
import {alertActions} from "../utils/Redux";
import Alert from "react-bootstrap/Alert";
class MuseumComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            id: this.props.match.params.id,
            name: '',
            location:'',
            hidden: false,
            alertShow: false,
            alertMessage: '',
        }

        this.onSubmit = this.onSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange({target}) {
        this.setState({[target.name]: target.value});
    };

    onSubmit(event) {
        console.log(event, 'event');
        event.preventDefault();
        event.stopPropagation();
        let err = '';
        if (!this.state.name) {
            err += "Название музея должно быть указано"
        }
        if (!this.state.location) {
            err += " Локация музея должна быть указана"
        }
        if (err) {
            this.props.dispatch(alertActions.error(err))
            this.setState({alertShow: true, alertMessage: err});
            return ;
        }
        let museum = {id: this.state.id, name: this.state.name, location: this.state.location};
        if (parseInt(museum.id) === -1) {
            BackendService.createMuseum(museum)
                .then((res) => {
                    if (res.data.error) {
                        throw new Error(res.data.error);
                    }
                    this.props.history.push('/museums')
                })
                .catch((e) => {
                    this.props.dispatch(alertActions.error(e));
                    this.setState({alertShow: true, alertMessage: 'Такой музей уже есть'});
                })
        } else {
            BackendService.updateMuseum(museum)
                .then(() => this.props.history.push('/museums'))
                .catch(() => {
                })
        }
    }

    componentDidMount() {
        if(parseInt(this.state.id) !== -1) {
            BackendService.retrieveMuseum(this.state.id)
                .then((resp) => {
                    this.setState({
                        name: resp.data.name,
                        location: resp.data.location,
                    });
                })
                .catch(() => this.setState({hidden: true}));
        }
    }

    render() {
        if (this.state.hidden)
            return null;
        return (
            <>
                {this.state.alertShow && <Alert variant={'danger'}>{this.state.alertMessage}</Alert>}
                <div className="m-4">
                    <div className="row my-2 mr-0">
                        <h3>Страна</h3>
                        <button
                            className="btn btn-outline-secondary ml-auto"
                            onClick={() => this.props.history.goBack()}><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад
                        </button>
                    </div>
                    <Form onSubmit={this.onSubmit}>
                        <Form.Group>
                            <Form.Label>Название</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Введите название музея"
                                onChange={this.handleChange}
                                value={this.state.name}
                                name="name"
                                autoComplete="off"
                            />
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Локация</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Введите локацию музея"
                                onChange={this.handleChange}
                                value={this.state.location}
                                name="location"
                                autoComplete="off"
                            />
                        </Form.Group>
                        <button
                            className="btn btn-outline-secondary"
                            type="submit"><FontAwesomeIcon icon={faSave}/>{" "}-Сохранить
                        </button>
                    </Form>
                </div>
            </>
        )
    }

}

export default connect()(MuseumComponent);