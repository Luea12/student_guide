
/**This function returns a random image*/
function chooseImage(){
    var bigSize = ['url(images/image1.jpg)',
        'url(images/image2.jpg)',
        'url(images/image3.jpg)',
        'url(images/image7.jpg)',
    ];
    var random= Math.floor(Math.random() * bigSize.length);
    return bigSize[random]
}

/** This function set a random image to the background*/
function updateBackground(){
    const node = document.getElementsByClassName('layer2')[0];
    if(node!=null) {
        node.style.backgroundImage = this.chooseImage();
    }
}

/** This function is called every time you hover over layer 1.
 *  For the first time you hover, the Welcome to Student Guide
 *  will disappear. Other calls are useless  */
function handleOnMouseEnter() {
    if (false){
        return
    }
    else {
        if (document.getElementById('welcome') == null)
            return
        else {
            var div = document.getElementById('welcome');
            div.style.opacity = '1';
            var interval = setInterval(function () {
                if (div.style.opacity < 0) {
                    clearInterval(interval);
                    div.parentElement.removeChild(div);
                    div.style.display='none'
                }
                div.style.opacity = String(parseFloat(div.style.opacity) - 0.10)
            }, 50);

            var element = document.getElementById('login_form');
            element.style.display = 'inline';
            element.style.opacity = '0';
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


/** The function below is called when page is loaded*/
document.addEventListener("DOMContentLoaded", function(event) {
    const div = document.getElementById("password");
    if( div !== null ) {
            div.setAttribute('value',"");
        }
    updateBackground();
    const login = document.getElementById("login_form");
    if ( login!=null ){
        login.style.display ='none';
    }
    const a = document.getElementsByClassName('layer1')[0];
    if ( a!= null ){
        a.addEventListener('mouseenter', handleOnMouseEnter);
    }
});