import React, { Component } from 'react';
import {connect} from "react-redux"
import {Form} from "react-bootstrap"
import BackendService from "../services/BackendService";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";
import {alertActions} from "../utils/Redux";
import Alert from "react-bootstrap/Alert";

class ArtistComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            id: this.props.match.params.id,
            name: '',
            century: '',
            country: '',
            hidden: false,
            alertShow: false,
            alertMessage: '',
        }

        this.onSubmit = this.onSubmit.bind(this)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange({target}) {
        console.log(target);
        this.setState({[target.name]: target.value});
    };

    onSubmit(event) {
        event.preventDefault();
        event.stopPropagation();
        let err = null;
        if (!this.state.name) {
            err = "Имя художника должно быть указано"
        }
        if (!this.state.century) {
            err = "Век художника должен быть указан"
        }
        if (!this.state.country) {
            err = "Страна художника должна быть указана"
        }
        if (err) {
            this.props.dispatch(alertActions.error(err))
            this.setState({alertShow: true, alertMessage: err});
            return ;
        }
        let artist = {id: this.state.id, name: this.state.name, country: this.state.country, century: this.state.century};
        if (parseInt(artist.id) === -1) {
            BackendService.createArtist(artist)
                .then((res) => {
                    if (res.data.error) {
                        throw new Error(res.data.error);
                    }
                    this.props.history.push('/artists')
                })
                .catch((e) => {
                    this.props.dispatch(alertActions.error(e));
                    this.setState({alertShow: true, alertMessage: e});
                })
        } else {
            BackendService.updateArtist(artist)
                .then(() => this.props.history.push('/artists'))
                .catch(() => {
                })
        }
    }

    componentDidMount() {
        if(parseInt(this.state.id) !== -1) {
            BackendService.retrieveArtist(this.state.id)
                .then((resp) => {
                    this.setState({
                        name: resp.data.name,
                        century: resp.data.century,
                        country: resp.data.country.name,
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
                        <h3>Художник</h3>
                        <button
                            className="btn btn-outline-secondary ml-auto"
                            onClick={() => this.props.history.goBack()}><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад
                        </button>
                    </div>
                    <Form onSubmit={this.onSubmit}>
                        <Form.Group>
                            <Form.Label>Имя</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Введите имя художника"
                                onChange={this.handleChange}
                                value={this.state.name}
                                name="name"
                                autoComplete="off"
                            />
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Век</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Введите век"
                                onChange={this.handleChange}
                                value={this.state.century}
                                name="century"
                                autoComplete="off"
                            />
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Страна</Form.Label>
                            <Form.Control
                                type="text"
                                placeholder="Введите страну художника"
                                onChange={this.handleChange}
                                value={this.state.country}
                                name="country"
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

export default connect()(ArtistComponent);