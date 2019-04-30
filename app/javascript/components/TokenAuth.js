import React, {Component} from "react"
import ReactDOM from "react-dom";
import PropTypes from 'prop-types';
import $ from 'jquery';

class TokenAuth extends Component {

    constructor(props) {

      super(props);
      this.state = {
         token: ''
       }

      this.handleTokenChange = this.handleTokenChange.bind(this)
      this.handleSubmit = this.handleSubmit.bind(this);

    }

    handleTokenChange(event) {
            this.setState({
                token: event.target.value
            });
        }
      handleSubmit(event) {

          event.preventDefault()
          this.setState({

               token: event.target.token.value,

           });
           var token = this.state.token

            $.ajax({
            url: '/token_auth',
            dataType: 'script',
            type: 'POST',
            data: { token: token},
            success: function(response){
                        console.log(response)
                    }
          });



      }


    render(){

      return (

        <div>
            <section className="box">
                 {/* zona centrala cu continut */}
                <div className="layer1">
                <div>
                <main>
                    {/* login screen */}
                    <div id="token_auth">
                        <form  onSubmit = { this.handleSubmit}

                        >
                            <h2>Token Confirmation</h2>
                            <div className="inputBox">
                                <input
                                    name='token'
                                    value={this.state.token}
                                    onChange={this.handleTokenChange}
                                    required
                                />
                                <label>Token</label>
                            </div>

                            <input id='submit_button' type = "submit" value = "Check Token" />

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

export default TokenAuth
