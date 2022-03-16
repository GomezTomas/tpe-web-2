<?php

require_once './Model/BooksModel.php';
require_once './View/BooksView.php';
require_once './Model/AuthorsModel.php';
require_once './Helpers/AuthHelper.php';

class BooksController{

    private $view;
    private $model;
    private $authorsModel;
    private $authHelper;

    function __construct(){
        $this->view = new BooksView();
        $this->model = new BooksModel();
        $this->authorsModel = new AuthorsModel();
        $this->authHelper = new AuthHelper();
    }

    function showBooks(){
        $datos = $this->authHelper->startSession();
        if(!$datos){
            $datos= ['', ''];
        }
        $books = $this->model->getBooks();
        $authors = $this->authorsModel->getAuthors();
        $this->view->renderBooks($books, $authors, $datos[0], $datos[1]);
    }

    function showBook($id){
        $datos = $this->authHelper->startSession();
        if(!$datos){
            $datos = ['', '', ''];
        }
        $book = $this->model->getBook($id);
        $authors = $this->authorsModel->getAuthors();
        $this->view->renderBook($book, $authors, $datos[0], $datos[1], $datos[2]);
    }

    function showBooksAdmin(){   
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            $books = $this->model->getBooks();
            $authors = $this->authorsModel->getAuthors();
            $this->view->renderBooksAdmin($books, $authors);
        }else{
            $this->view->relocateHome();
        }

    }

    function addBook(){
        $this->authHelper->checkLoggedIn();

        if(!empty($_POST['titulo'] && !empty($_POST['genero']) && !empty($_POST['descripcion']))){
            $this->model->insertBook($_POST['titulo'], $_POST['genero'], $_POST['descripcion'], $_POST['autor']);
        }
        $this->view->relocateBooks();
    }

    function deleteBook($id){
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            $this->model->deleteBook($id);
            $this->view->relocateBooks();
        }else{
            $this->view->relocateHome();
        }

    }

    function modBook($id){
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            $book = $this->model->getBook($id);
            $authors = $this->authorsModel->getAuthors();
            $this->view->renderUpdate($id, $authors, $book);
        }else{
            $this->view->relocateHome();
        }

    }

    function updateBook($id){
        $this->authHelper->checkLoggedIn();

        if(!empty($_POST['titulo'] && !empty($_POST['genero']) && !empty($_POST['descripcion']))){
            $this->model->updateBook($id, $_POST['titulo'], $_POST['genero'], $_POST['descripcion'], $_POST['autor']);
        }
        $this->view->relocateBooks();
    }
}