import React from 'react';
import {Navbar, Nav} from 'react-bootstrap';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {faBars, faUser} from '@fortawesome/free-solid-svg-icons';
import { withRouter, Link } from "react-router-dom";
// import Utils from "../utils/Utils";
import BackendService from "../services/BackendService";
import {connect} from "react-redux";
import {userActions} from "../utils/Redux";

class NavigationBar extends React.Component {

    constructor (props) {
        super(props);
        this.goHome = this.goHome.bind(this)
        this.logout = this.logout.bind(this)

    }

    goHome()
    {
        this.props.history.push("/home")
    }

    logout() {
        BackendService.logout().finally( () => {
            this.props.dispatch(userActions.logout());
            this.props.history.push('/login')
        })
    }


    render() {
        // let uname = Utils.getUserName();
        return (
            <Navbar bg="light" expand="lg">
                <button type="button"
                        className="btn btn-outline-secondary mr-2"
                        onClick={this.props.toggleSideBar}>
                        <FontAwesomeIcon icon={faBars}/>
                </button>
                <Navbar.Brand>myRP0</Navbar.Brand>
                <Navbar.Toggle aria-controls="basic-navbar-nav"/>
                <Navbar.Collapse id="basic-navbar-nav">
                    <Nav className="mr-auto">
                        <Nav.Link as={Link} to="/home">Home</Nav.Link>
                        <Nav.Link onClick={this.goHome}>Another home</Nav.Link>
                        <Nav.Link onClick={() => { this.props.history.push("/home")}}>Yet another home</Nav.Link>
                    </Nav>
                </Navbar.Collapse>
                <Navbar.Text>{this.props.user && this.props.user.name}</Navbar.Text>
                { this.props.user &&
                    <Nav.Link onClick={this.logout}><FontAwesomeIcon icon={faUser} fixedWidth/>{' '}Выход</Nav.Link>

                }
                { !this.props.user &&
                <Nav.Link href="/login"><FontAwesomeIcon icon={faUser} fixedWidth/>{' '}Вход</Nav.Link>

                }
            </Navbar>
        );
    }
}

function mapStateToProps(state) {
    const { user } = state.authentication;
    return { user };
}

export default connect(mapStateToProps)(withRouter(NavigationBar));