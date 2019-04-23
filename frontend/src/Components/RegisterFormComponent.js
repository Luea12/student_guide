import React from "react"
import { NavLink } from 'react-router-dom'
function RegisterFormComponent(props) {

    return (
        <main>
            <form>
                <h2>Sign Up</h2>
                <div className="inputBox">
                    <input 
                        name='username'
                        value={props.data.username}
                        onChange={props.handleChange}
                        // placeholder='Username'
                        required
                        // type="email" name="email"
                        // placeholder='Username or Email'
                    />
                    <label>Username</label>
                </div>   
                <div className="inputBox">
                    <input
                        type='password'
                        name='password'
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                        value={props.data.password}
                        onChange={props.handleChange}
                        // placeholder='Password'
                        required
                    />
                    <label>Password</label>
                </div>
                <div className="inputBox">
                    <input
                        type='password'
                        name='password2'
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                        value={props.data.password2}
                        onChange={props.handleChange}
                        onKeyUp={props.validatePasswords}
                        // placeholder='Re-type password'
                        required
                    />
                    <label>Re-type password</label>
                </div>
                <div className="inputBox">
                    <input
                        type='email'
                        name='email'
                        value={props.data.email}
                        onChange={props.handleChange}
                        // laceholder='Email'
                        required
                    />
                    <label>Email</label>
                </div>
                {/* <p>Birthday:</p> */}
                <div className="inputBox">
                    <input
                        type='date'
                        name='birthday'
                        value={props.data.birthday}
                        onChange={props.handleChange}
                        placeholder="Birthday:"
                        min="1903-01-02"
                        max="2020-01-01"
                        required
                    />
                </div>
                <button onClick={props.handleClick}>Register</button>
            </form>
            <p><br />Already made an account? <NavLink to='/' className="btn btn-link">Back to Login</NavLink></p>
            
        </main>
    )
}

export default RegisterFormComponent