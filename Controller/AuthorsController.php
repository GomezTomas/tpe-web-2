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
        $this->authHelper->startSession();

        $author = $this->model->getAuthor($id);
        $books = $this->booksModel->getBooks();
        $this->view->renderAuthor($author, $books);
    }

    function showAuthorsAdmin(){
        $this->authHelper->checkLoggedIn();

        $authors = $this->model->getAuthors();
        $this->view->renderAuthorsAdmin($authors);
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

        try{
            $this->model->deleteAuthor($id);
            $this->view->relocateAuthors();
        }catch(Exception $e){
            $this->view->showError();
        }
    }

    function modAuthor($id){
        $this->authHelper->checkLoggedIn();
        
        $author = $this->model->getAuthor($id);
        $this->view->renderUpdate($id, $author);
    }

    function updateAuthor($id){
        $this->authHelper->checkLoggedIn();

        if(!empty($_POST['nombre'] && !empty($_POST['apellido']) && !empty($_POST['nacionalidad']))){
            $this->model->updateAuthor($_POST['nombre'], $_POST['apellido'], $_POST['nacionalidad'], $id);
        }
        $this->view->relocateAuthors();

    }
}