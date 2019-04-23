import React, {Component} from "react"
import RegisterFormComponent from "../Components/RegisterFormComponent"

class RegisterFormContainer extends Component {
    constructor() {
        super()
        this.state = {
            username: '',
            email:'',
            password: '',
            password2:'',
            birthday:''
        }
        this.handleChange = this.handleChange.bind(this)
        this.handleClick = this.handleClick.bind(this)
        this.validatePasswords = this.validatePasswords.bind(this)
    }

    handleChange(event) {
        const {name, value} = event.target
        this.setState({
            [name]: value
        })
    }

    handleClick(){

    }



    validatePasswords(e){
        var password = this.state.password;
        var password2 = this.state.password2;
            if(password !== password2) {
                e.target.setCustomValidity("Passwords Don't Match");
            } else {
                e.target.setCustomValidity('');
            }

        // password.onchange = validatePassword;
        // confirm_password.onkeyup = validatePassword;
    }

    render() {
        return(
            <div>
                <RegisterFormComponent
                    handleChange={this.handleChange}
                    data={this.state}
                    handleClick={this.handleClick}
                    validatePasswords={this.validatePasswords}
                />
            </div>
        )
    }
}

export default RegisterFormContainer