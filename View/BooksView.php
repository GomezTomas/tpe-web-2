<?php

require_once './libs/smarty/libs/Smarty.class.php';

class BooksView{
    
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty();
    }

    function renderBooks($books, $authors, $rol){
        foreach($authors as $author){
            $autores[$author->id_autor] = "$author->apellido, $author->nombre";
        }
        $this->smarty->assign('books', $books);
        $this->smarty->assign('authors', $autores);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $rol);

        $this->smarty->display('./templates/home.tpl');
    }

    function renderBook($book, $authors, $rol){
        foreach($authors as $author){
            if($book->id_autor == $author->id_autor)
            $autor = "$author->apellido, $author->nombre";
        }
        $this->smarty->assign('book', $book);
        $this->smarty->assign('author', $autor);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $rol);
        $this->smarty->display('./templates/book.tpl');

    }

    function renderBooksAdmin($books, $authors){
        foreach($authors as $author){
            $autores[$author->id_autor] = "$author->apellido, $author->nombre";
        }
        $this->smarty->assign('books', $books);
        $this->smarty->assign('autores', $autores);
        $this->smarty->assign('authors', $authors);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $_SESSION['rol']);

        $this->smarty->display('./templates/books.tpl');
    }

    function relocateBooks(){
        header("Location:".BASE_URL."showBooks");
    }
    function relocateHome(){
        header("Location:".BASE_URL."home");
    }

    function renderUpdate($id, $authors, $book){
        $this->smarty->assign('book', $book);
        $this->smarty->assign('authors', $authors);
        $this->smarty->assign('id', $id);
        $this->smarty->assign('logged', isset($_SESSION['email']));
        $this->smarty->assign('rol', $_SESSION['rol']);

        $this->smarty->display("./templates/bookUpdate.tpl");
    }
}