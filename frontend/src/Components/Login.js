import React, {Component} from "react"
import LoginFormContainer from '../Components/LoginFormContainer.js'

class Login extends Component{

    constructor(props) {
        super(props);
        this.handleOnMouseEnter = this.handleOnMouseEnter.bind(this)
        this.state = {
            done: 0
        }
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
        this.updateBackground()
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
                    div.style.opacity = String(parseFloat(div.style.opacity) - 0.5)
                }, 150);

                var element = document.getElementById('login')
                element.style.display = 'inline'
                element.style.opacity = '0'
                var myInterval = setInterval(function () {
                    if (parseFloat(element.style.opacity) > 1) {
                        clearInterval(myInterval);
                    } else {
                        element.style.opacity = (parseFloat(element.style.opacity) + 0.05).toString();
                    }
                }, 50)
            }
        }
    }

   render(){
       return(
           <div>
               <section className="box">
                   <div className="layer1" onMouseEnter={this.handleOnMouseEnter}>
                       <LoginFormContainer/>
                   </div>
                   <div className="layer2"></div>
               </section>
           </div>
       )
   }
}

export default Login