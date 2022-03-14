<?php

require_once './libs/smarty/libs/Smarty.class.php';

class UserView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function renderUsers($users){
        $this->smarty->assign('users', $users);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $_SESSION['rol']);

        $this->smarty->display('./templates/users.tpl');
    }

    function relocateUsers(){
        header("Location:".BASE_URL."showUsers");
    }
    function relocateHome(){
        header("Location:".BASE_URL."home");
    }
}