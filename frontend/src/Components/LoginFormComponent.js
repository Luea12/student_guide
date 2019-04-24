import React from "react"
import { NavLink } from 'react-router-dom'

function LoginFormComponent(props) {

    return (
        <main>
            <div id="welcome" >
                <h1>Welcome<br />to<br />STUDENT GUIDE</h1>
            </div>
            <div id="login">
                <form>
                    <h2>Login</h2>
                    <div className="inputBox">
                        <input 
                            name='nameOrMail'
                            value={props.data.nameOrMail}
                            onChange={props.handleChange}
                            required
                        />
                        <label>Username or Email</label>
                    </div>
                    <div className="inputBox">
                        <input
                            type='password'
                            name='password'
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                            title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                            value={props.data.password}
                            onChange={props.handleChange}
                            required
                        />
                        <label>Password</label>
                    </div>
                            
                    <button>Login</button>
                </form>
                <p ><br />Don't have an account yet? <NavLink to='/Register'>Create one now</NavLink>!</p>
            </div>
        </main>
    )
}

export default LoginFormComponent