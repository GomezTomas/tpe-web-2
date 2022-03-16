<?php

class AuthHelper{

    function __construct(){
    }

    function startSession(){
        session_start();
        if(isset($_SESSION['rol'])){
            $datos = [$_SESSION['rol'], $_SESSION['email']];
            return $datos;
        }else{
            return null;
        }
    }

    function checkLoggedIn(){
        session_start();
        if(!isset($_SESSION['email'])){
            header('Location:'. BASE_URL. 'login');
        }
    }

    function checkRol(){
        if(isset($_SESSION['rol']) && $_SESSION['rol'] == 1){
            return true;
        }else{
            return false;
        }
    }

    function logout(){
        session_start();
        session_destroy();
        header('Location:'. BASE_URL. 'home');
    }
}