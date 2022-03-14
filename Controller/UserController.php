<?php

require_once './Model/UserModel.php';
require_once './View/UserView.php';

class UserController{

    private $model;
    private $view;
    private $authHelper;

    function __construct(){
        $this->model = new UserModel();
        $this->view = new UserView();
        $this->authHelper = new AuthHelper();
    }

    function showUsers(){
        $this->authHelper->checkLoggedIn();
        $users = $this->model->getUsers();
        $this->view->renderUsers($users);
    }
    
    function deleteUser($id){
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            $this->model->deleteUser($id);
            $this->view->relocateUsers();
        }else{
            $this->view->relocateHome();
        }
    }

    function updateUser($id, $rol){
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            $this->model->updateUser($id, $rol);
            $this->view->relocateUsers();
        }else{
            $this->view->relocateHome();
        }

    }
}