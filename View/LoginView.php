<?php

class LoginView{

    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function showLogin($msg = ""){    
        $this->smarty->assign('msg', $msg);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->display("./templates/login.tpl");
    }
    function relocateHome(){
        header("Location:".BASE_URL."home");
    }
}