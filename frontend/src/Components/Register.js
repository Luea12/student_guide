import React from "react";
import RegisterFormContainer from "./RegisterFormContainer";


function Register() {
    return(
        <div>
            <section className="box">
                {/* zona centrala cu continut */}
                <div className="layer1" >
                    <RegisterFormContainer />
                </div>
                {/* background */}
                <div className="layer2"></div>
            </section>
        </div>
    )
}

export default Register