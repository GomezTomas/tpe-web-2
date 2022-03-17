<?php

require_once './Model/BooksModel.php';
require_once './View/AuthorsView.php';
require_once './Model/AuthorsModel.php';
require_once './Helpers/AuthHelper.php';

class AuthorsController{
    
    private $view;
    private $model;
    private $booksModel;
    private $authHelper;


    function __construct(){
        $this->view = new AuthorsView();
        $this->model = new AuthorsModel();
        $this->booksModel = new BooksModel();
        $this->authHelper = new AuthHelper();
    }

    function showAuthors(){
        $authors = $this->model->getAuthors();
        $this->view->renderAuthors($authors);
    }

    function showAuthor($id){
        $datos = $this->authHelper->startSession();

        $author = $this->model->getAuthor($id);
        $books = $this->booksModel->getBooks('');
        if(!$datos){
            $datos = ["", ""];
        }
        $this->view->renderAuthor($author, $books, $datos[0], $datos[1]);
    }

    function showAuthorsAdmin(){
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            $authors = $this->model->getAuthors();
            $this->view->renderAuthorsAdmin($authors);
        }else{
            $this->view->relocateHome();
        }
    }

    function addAuthor(){
        $this->authHelper->checkLoggedIn();

        if(!empty($_POST['nombre'] && !empty($_POST['apellido']) && !empty($_POST['nacionalidad']))){
            $this->model->insertAuthor($_POST['nombre'], $_POST['apellido'], $_POST['nacionalidad']);
        }
        $this->view->relocateAuthors();
    }

    function deleteAuthor($id){
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            try{
                $this->model->deleteAuthor($id);
                $this->view->relocateAuthors();
            }catch(Exception $e){
                $this->view->showError();
            }
        }else{
            $this->view->relocateHome();
        }
    }

    function modAuthor($id){
        $this->authHelper->checkLoggedIn();
        if($this->authHelper->checkRol()){
            $author = $this->model->getAuthor($id);
            $this->view->renderUpdate($id, $author);
        }else{
            $this->view->relocateHome();
        }
    }

    function updateAuthor($id){
        $this->authHelper->checkLoggedIn();

        if(!empty($_POST['nombre'] && !empty($_POST['apellido']) && !empty($_POST['nacionalidad']))){
            $this->model->updateAuthor($_POST['nombre'], $_POST['apellido'], $_POST['nacionalidad'], $id);
        }
        $this->view->relocateAuthors();

    }
}