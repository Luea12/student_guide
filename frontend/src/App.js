import React, { Component } from 'react';
import './App.css';
import Login from './Components/Login'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import Error from './Components/Error'
import Register from "./Components/Register"


const NewPage = () =>{
  return(
      <div>
        <p> I am a new page and here should be the Home page</p>
      </div>
  )
}


/**
 * Class App represents the entry point for our Application.
 * Depending on the path, it renders a different component
 * For path = '/' it renders the login page etc
 * */
class App extends Component {
  render() {
    return (
      <div >
        <BrowserRouter>
          <Switch>
              <Route path='/' component={Login} exact/>
              <Route path='/Register' component={Register}/>
              <Route path='/Home' component={NewPage}/>
              <Route component={Error}/>
          </Switch>
        </BrowserRouter>
      </div>
    );
  }
}

export default App;
