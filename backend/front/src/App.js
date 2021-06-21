import React, {useState} from "react";
import './App.css';
import { BrowserRouter as Router, Route, Switch, Redirect } from "react-router-dom"
import {createBrowserHistory} from "history";
import NavigationBar from "./components/NavigationBar";
import Home from "./components/Home";
import Login from "./components/Login";
import Utils from './utils/Utils'
import {Provider} from "react-redux";
import {store} from "./utils/Redux";
import SideBar from "./components/SideBar";
import CountryListComponent from "./components/CountryListComponent";
import CountryComponent from "./components/CountryComponent";
import ArtListComponent from "./components/ArtListComponent";
import ArtistComponent from "./components/ArtistComponent";
import MuseumListComponent from "./components/MuseumListComponent";
import MuseumComponent from "./components/MuseumComponent";
import PaintingListComponent from "./components/PaintingListComponent";
import PaintingComponent from "./components/PaintingComponent";
import UserListComponent from "./components/UserListComponent";
import UserComponent from "./components/UserComponent";
import MyAccountComponent from "./components/MyAccountComponent";

const AuthRoute = props => {
    let user = Utils.getUserName();
    if (!user) return <Redirect to="/login" />
    return <Route {...props} />
}

const history = createBrowserHistory();

function App(props) {
    const [exp, setExpanded] = useState(false);
  return (
      <Provider store={store}>
    <div className="App">

      <Router history = { history }>
          <NavigationBar toggleSideBar={()=> setExpanded(!exp)}/>
          <div className="wrapper">
              <SideBar expanded={exp}/>
              <div className="container-fluid">
              {props.error_message &&
              <div className="alert alert-danger m-1">{props.error_message}</div>
              }
              <Switch>
                  <AuthRoute path="/home" component={Home} />
                  <Route path="/login" component={Login} />
                  <AuthRoute path="/countries" exact component={CountryListComponent}/>
                  <AuthRoute path="/countries/:id" component={CountryComponent}/>
                  <AuthRoute path="/artists" exact component={ArtListComponent}/>
                  <AuthRoute path="/artists/:id" component={ArtistComponent}/>
                  <AuthRoute path="/museums" exact component={MuseumListComponent}/>
                  <AuthRoute path="/museums/:id" component={MuseumComponent}/>
                  <AuthRoute path="/paintings" exact component={PaintingListComponent}/>
                  <AuthRoute path="/paintings/:id" component={PaintingComponent}/>
                  <AuthRoute path="/users" exact component={UserListComponent}/>

                  <AuthRoute path="/users/:id" component={UserComponent}/>
                  <AuthRoute path="/myaccount" exact component={MyAccountComponent}/>
              </Switch>
          </div>
          </div>
      </Router>
    </div>
      </Provider>
  );
}

function mapStateToProps(state) {
    // const { msg } = state.alert;
    return { error_message: state.alert }
}

export default App; //connect(mapStateToProps)(App);
