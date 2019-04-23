import React from "react"
import LoginFormComponent from "../Components/LoginFormComponent"

class LoginFormContainer extends React.Component {
    constructor() {
        super()
        this.state = {
          nameOrMail: '',
            password: ''
        }

        this.handleChange = this.handleChange.bind(this)
    }

    handleChange(event) {
        const {name, value} = event.target
            this.setState({
                [name]: value
            })
    }

    render() {
        return(
            <div>
                <LoginFormComponent
                    handleChange={this.handleChange}
                    data={this.state}
                />
            </div>
        )
    }
}

export default LoginFormContainer