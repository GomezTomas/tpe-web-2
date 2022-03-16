<?php

require_once './Model/UserModel.php';
require_once './View/LoginView.php';
require_once './Helpers/AuthHelper.php';

class LoginController{

    private $view;
    private $model;
    private $authHelper;

    function __construct(){
        $this->view = new LoginView();
        $this->model = new UserModel();
        $this->authHelper = new AuthHelper();
    }

    function login(){
        $this->view->showLogin();
    }

    function verify($user = null, $email = null){
        if(!empty($_POST['email']) && !empty($_POST['password'])){
            $email = $_POST['email'];
            $password = $_POST['password'];
        }
            $user = $this->model->getUser($email);

            if($user && password_verify($password, $user->password)){
                session_start();
                $_SESSION['email'] = $email;
                $_SESSION['rol'] = $user->rol;
                $_SESSION['id'] = $user->id;
                $this->view->relocateHome();
            }else{
                $this->view->showLogin("Acceso denegado!");
            }
    }

    function logout(){
        $this->authHelper->logout();
        $this->view->showLogin("Hasta Pronto!");
    }

    function showRegister(){
        $this->view->showRegister();
    }

    function register(){
        if(!empty($_POST['email']) && !empty($_POST['password'])){
            $email = $_POST['email'];
            $pass = $_POST['password'];
            $password = password_hash($pass, PASSWORD_BCRYPT);
            $this->model->addUser($email, $password);
            $this->verify($email, $pass);
        }else{
            $this->view->showRegister("Registro denegado!");
        }
    }
}