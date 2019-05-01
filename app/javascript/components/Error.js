import React from "react"
import PropTypes from "prop-types"

class Error extends React.Component {
  render () {
    return (
      <React.Fragment>
        <h1>404</h1>
        <p>The page you are looking for was not found.</p>
      </React.Fragment>
    );
  }
}

export default Error
