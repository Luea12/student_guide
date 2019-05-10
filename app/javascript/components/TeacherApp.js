import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import TeacherHome from './TeacherHome'
import Error from './Error'

class TeacherApp extends React.Component {
  render () {
    return (
      <React.Fragment>
        <BrowserRouter>
          <Switch>
            <Route exact path="/home_t" component={TeacherHome} />
            <Route component={Error} />
          </Switch>
        </BrowserRouter>
      </React.Fragment>
    );
  }
}

export default TeacherApp
