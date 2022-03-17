<?php

require_once './libs/smarty/libs/Smarty.class.php';

class AuthorsView{
    
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function renderAuthors($authors){
        $this->smarty->assign('authors',$authors);
        $this->smarty->assign('s', isset($_SESSION['email']));

        $this->smarty->display('./templates/authors.tpl');
    }

    function renderAuthor($author, $books, $rol, $email){
        foreach($books as $book){
            if($author->id_autor == $book->id_autor){
                $libros[] = $book->titulo;
            }
        }
        $this->smarty->assign('author', $author);
        if(!empty($libros)){
            $this->smarty->assign('libros', $libros);
        }else{
            $this->smarty->assign('libros', 'No existen libros de este autor');
        }
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $rol);
        $this->smarty->assign('email', $email);
        
        $this->smarty->display('./templates/author.tpl');
    }

    function renderAuthorsAdmin($authors){
        $this->smarty->assign('authors',$authors);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $_SESSION['rol']);
        $this->smarty->assign('email',$_SESSION['email']);

        $this->smarty->display('./templates/authorsAdmin.tpl');
    }

    function relocateAuthors(){
        header("Location:".BASE_URL."autores");
    }

    function relocateHome(){
        header("Location:".BASE_URL."home");
    }

    function renderUpdate($id, $author){
        $this->smarty->assign('author', $author);
        $this->smarty->assign('id', $id);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $_SESSION['rol']);
        $this->smarty->assign('email',$_SESSION['email']);

        $this->smarty->display("./templates/authorUpdate.tpl");
    }

    function showError(){
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $_SESSION['rol']);
        $this->smarty->assign('email',$_SESSION['email']);

        $this->smarty->display("./templates/error.tpl");
    }
}