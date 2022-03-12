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

    function verify(){
        if(!empty($_POST['email']) && !empty($_POST['password'])){
            $email = $_POST['email'];
            $password = $_POST['password'];
        }
            $user = $this->model->getUser($email);

            if($user && password_verify($password, $user->password)){
                session_start();
                $_SESSION['email'] = $email;
                $this->view->relocateHome();
            }else{
                $this->view->showLogin("Acceso denegado!");
            }
    }

    function logout(){
        $this->authHelper->logout();
        $this->view->showLogin("Hasta Pronto!");
    }
}