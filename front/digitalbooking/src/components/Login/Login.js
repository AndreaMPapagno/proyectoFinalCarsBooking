import React, { useState } from "react";
import styles from "./login.module.scss";
import { Link, useNavigate } from "react-router-dom";
//import { useEffect } from "react";
import { useAuth } from '../../hooks/index';
import {ip} from "../IP/IpConstante";



function Login()  {
    const navigate = useNavigate();
    // logica necesaria para acceder
    const [email, setEmail]= useState("");
    const[password, setPassword]= useState("");
    const [typeValue, setTypeValue] = useState("password");
    const [emptyPass, setEmptyPass]= useState(styles.login_input);
    const [emptyUser, setEmptyUser]= useState(false);
    const [wrongPass, setWrongPass] = useState(styles.login_input);
    const [wrongUser, setWrongUser] = useState(false);
    const [userErrorStyle, setUserErrorStyle] = useState(styles.login_input);
    const {token, setToken} = useAuth();


    const iniciarSesion = async (e) => {
        e.preventDefault();
        
        if(email === "" || password === "") {
            setEmptyUser(true);
            setEmptyPass(styles.input_error);
            setUserErrorStyle(styles.input_error);
            document.getElementById("txtusu").focus();
            
            return;
        } 
        const settings = {
            method: 'POST',
            body: JSON.stringify({email, password}),
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            }
        };
        try {
            const response = await fetch(`${ip}/auth/token`, settings);
            const data = await response.json();
            setToken(data.token);
            localStorage.setItem('token', data.token);
            localStorage.setItem('role', data.authorities[0].authority );
            // console.log(data.authorities[0].authority)
            const regex = new RegExp("products");
            const fromBooking = regex.test(localStorage.getItem('prevUrl'));
            
            if (fromBooking) {
                navigate(-1);
            } else {
                navigate("/");
            }
    
        } catch (error) {
                
                setWrongPass(styles.input_error);
                setWrongUser(true);
                setEmptyUser(false);
                setUserErrorStyle(styles.input_error);
                //setEmptyPass(styles.login_input);
                
                //se posiciona de nuevo en el usuario para q lo intente de nuevo
                document.getElementById("txtusu").focus();
        } 
    }

    /*  useEffect (()=>{
        if(token){     
            localStorage.setItem('token', JSON.stringify(token));
            navigate('/')
        }
    }, [token]) */

    
                
    return(
        <div className= {styles.container_login}>
            <form className={styles.form_login} id="form_login" autoComplete="off">
                <div className={styles.inicioSesion}>
                    <h1 className={styles.login_title}>Iniciar Sesión</h1>
                    <label htmlFor="txtusu" className={styles.login_label}>Correo electrónico</label>
                    <input type="email"  id="txtusu" className={userErrorStyle} placeholder="    example@example.com"  onChange={ (e) =>setEmail(e.target.value) } onKeyUp={(e)=> setUserErrorStyle(styles.login_input)} required/>
                    {(userErrorStyle === styles.input_error && emptyUser) && <p className={styles.label_error}>Este campo es obligatorio</p>}
                    {(userErrorStyle === styles.input_error && wrongUser) && <p className={styles.label_error}>Usuario incorrecto.</p>}
                </div>
                <div className={styles.inputPass}>
                    <label htmlFor="txtpas" className={styles.login_label}>Contraseña</label>
                    <input type={typeValue} id="txtpas" className={emptyUser ? emptyPass : wrongPass} onChange={(e) =>setPassword(e.target.value)} onKeyUp={(e)=> setEmptyPass(styles.login_input)} required/>
                    <div className={styles.passToggle_container}>
                        <button  id="PasswordToogle"  className={styles.btnEyeContainer} type="button" onClick={()=> typeValue ==="password"? setTypeValue("text"): setTypeValue("password")}>
                                <span className={styles.btnEyeText}>
                                    <svg width="24" height="20" viewBox="0 0 24 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M23.8537 9.75504C23.7349 9.55692 21.8091 6.40401 18.3755 4.2988L21.3573 1.31699L20.683 0.6427L17.5149 3.81072C15.941 2.99297 14.0954 2.42624 12 2.42624C4.61579 2.42624 0.3255 9.45609 0.146211 9.75504L0 10L0.146211 10.245C0.26501 10.4431 2.19084 13.596 5.6245 15.7012L2.64269 18.683L3.31699 19.3573L6.485 16.1892C8.05894 17.007 9.90452 17.5737 12 17.5737C19.3842 17.5737 23.6744 10.5439 23.8537 10.2449L24 9.99996L23.8537 9.75504ZM6.33574 14.99C3.48 13.297 1.65133 10.7876 1.12324 10C1.94472 8.77482 5.90898 3.37998 12 3.37998C13.7893 3.37998 15.3934 3.84733 16.7898 4.53591L15.3189 6.00683C14.4181 5.25679 13.2612 4.80446 12 4.80446C9.13569 4.80446 6.80498 7.13516 6.80498 10C6.80498 11.261 7.25722 12.4178 8.00712 13.3187L6.33574 14.99ZM15.3144 7.35993C15.8933 8.08517 16.2418 9.002 16.2418 10C16.2418 12.3391 14.3391 14.2419 12 14.2419C11.002 14.2419 10.0853 13.8933 9.36002 13.3143L15.3144 7.35993ZM8.68582 12.6398C8.10708 11.9146 7.75862 10.9979 7.75862 10C7.75862 7.66092 9.66135 5.75815 12 5.75815C12.9981 5.75815 13.9148 6.10675 14.6401 6.68558L8.68582 12.6398ZM12 16.62C10.2107 16.62 8.60669 16.1527 7.2102 15.4641L8.68132 13.993C9.58212 14.7431 10.739 15.1956 12 15.1956C14.8648 15.1956 17.1955 12.8648 17.1955 10C17.1955 8.73888 16.7432 7.58198 15.9932 6.68113L17.6643 5.01004C20.52 6.70302 22.3487 9.21238 22.8768 10C22.0553 11.2252 18.091 16.62 12 16.62Z" fill="#607D8B"/></svg>
                                </span>
						</button> 
                    </div>
                    
                    { (emptyPass === styles.input_error) && <p className={styles.label_error}>Este campo es obligatorio</p> }
                    
                    {(wrongPass === styles.input_error || wrongUser) && <p className={styles.label_error}>Contraseña incorrecta</p>}
                </div>
                
                <div className={styles.btn_container}>
                    <button type= "submit" onClick={iniciarSesion} className={styles.btn_login}>Ingresar</button>          
                    <p className={styles.p_login}>Aún no tienes cuenta? <span><Link to="/user-register">Registrate</Link></span></p>
                </div>
            </form>
        </div>
        
    );
    }

export default Login;