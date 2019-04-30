import React, {Component} from "react"
import ReactDOM from "react-dom";
import PropTypes from 'prop-types';
import $ from 'jquery';


class Login extends Component{

  constructor(props) {
      super(props);
      this.handleOnMouseEnter = this.handleOnMouseEnter.bind(this)
      this.state = {
          done: 0,
          nameOrMail: '',
          password: ''

      }
          this.handleNameChange = this.handleNameChange.bind(this)
          this.handlePasswordChange = this.handlePasswordChange.bind(this)
          this.handleSubmit = this.handleSubmit.bind(this);

  }


  handleNameChange(event) {
        this.setState({
            nameOrMail: event.target.value
        });
    }
  handlePasswordChange(event) {
          this.setState({
              password: event.target.value
          });
      }
    handleSubmit(event) {

        event.preventDefault()
        this.setState({

             nameOrMail: event.target.nameOrMail.value,
             password: event.target.password.value
         });
         var nameOrMail = this.state.nameOrMail
         var password = this.state.password

          $.ajax({
          url: '/login',
          dataType: 'script',
          type: 'POST',
          data: {nameOrMail: nameOrMail, password: password},
          success: function(response){
                      console.log(response)
                  }
        });



    }



    componentWillMount(){
        this.setState({done:0})
    }


    /**
     * This function returns a random image
     */
    chooseImage(){
      var bigSize = ['url(/image1.jpg)',
          'url(/image2.jpg)',
          'url(/image3.jpg)',
          'url(/image4.jpg)',
          'url(/image5.jpg)',
          'url(/image6.jpg)',
          'url(/image7.jpg)',
      ];
        var random= Math.floor(Math.random() * bigSize.length);
        return bigSize[random]
    }


    /** This function set a random image to the background*/
    updateBackground(){
        const node = document.getElementsByClassName('layer2')[0]
        node.style.backgroundImage=this.chooseImage()
    }

    /** When the component is loaded, this function calls and renders a new image to the background*/
    componentDidMount(){



    }

    /** This function is called every time you hover over layer 1.
     *  For the first time you hover, the Welcome to Student Guide
     *  will disappear. Other calls are useless  */
    handleOnMouseEnter() {
        if (this.state.done){
            return
        }
        else {
            this.setState({done:1})
            if (document.getElementById('welcome') == null)
                return
            else {
                var div = document.getElementById('welcome');
                div.style.opacity = '1'
                var interval = setInterval(function () {
                    if (div.style.opacity < 0) {
                        clearInterval(interval)
                        div.parentElement.removeChild(div);
                        div.style.display='none'
                    }
                    div.style.opacity = String(parseFloat(div.style.opacity) - 0.05)
                }, 15);

                setTimeout(() => {
                    var element = document.getElementById('login')
                    element.style.opacity = '0'
                    element.style.display = 'inline'
                    var myInterval = setInterval(() => {
                        if (parseFloat(element.style.opacity) > 1) {
                            clearInterval(myInterval);
                        } else {
                            console.log(element.style.opacity)
                            element.style.opacity = (parseFloat(element.style.opacity) + 0.05).toString();
                        }
                    }, 1500)
                }, 500)
            }
        }
    }

   render(){
       return(
           <div>
               <section className="box">
                    {/* zona centrala cu continut */}
                   <div className="layer1" onMouseEnter={this.handleOnMouseEnter}>
                   <div>
                   <main>
                       {/* welcome screen */}
                       <div id="welcome" >
                           <h1>Welcome<br />to<br />STUDENT GUIDE</h1>
                       </div>
                       {/* login screen */}
                       <div id="login">
                           <form  onSubmit = { this.handleSubmit}

                           >
                               <h2>Login</h2>
                               <div className="inputBox">
                                   <input
                                       name='nameOrMail'
                                       value={this.state.nameOrMail}
                                       onChange={this.handleNameChange}
                                       required
                                   />
                                   <label>Username or Email</label>
                               </div>
                               <div className="inputBox">
                                   <input
                                       type='password'
                                       name='password'
                                       title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                                       value={this.state.password}
                                       onChange={this.handlePasswordChange}
                                       required
                                   />
                                   <label>Password</label>
                               </div>

                               <input type = "submit" value = "Login" />

                                <input type='hidden' name='authenticity_token' value={this.props.authenticity_token} />



                           </form>

                       </div>
                   </main>
                    </div>
                   </div>
                   {/* background */}
                   <div className="layer2"></div>
               </section>
           </div>
       )
   }
}

export default Login
