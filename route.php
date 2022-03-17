<?php 
    
require_once 'Controller/BooksController.php';
require_once 'Controller/AuthorsController.php';
require_once 'Controller/LoginController.php';
require_once 'Controller/UserController.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

if(!empty($_GET['action'])){
    $action = $_GET['action'];
}else{
    $action = 'home';
}

$params = explode('/', $action);

$booksController = new BooksController();
$authorsController = new AuthorsController();
$loginController = new LoginController();
$userController = new UserController();

switch($params[0]){
    case 'home':
        $booksController->showBooks();
        $authorsController->showAuthors();
        break;
    case 'register':
        $loginController->showRegister();
        break;
    case 'addUser':
        $loginController->register();
        break;
    case 'login':
        $loginController->login();
        break;
    case 'verify':
        $loginController->verify();
        break;
    case 'logout':
        $loginController->logout();
        break;
    case 'usuarios':
        $userController->showUsers();
        break;
    case 'deleteUser':
        $userController->deleteUser($params[1]);
        break;
    case 'adminUser':
        $userController->updateUser($params[1], 1);
        break;
    case 'deleteAdmin':
        $userController->updateUser($params[1], 0);
        break;
    case 'libro':
        $booksController->showBook($params[1]);
        break;
    case 'autor':
        $authorsController->showAuthor($params[1]);
        break;
    case 'autores':
        $authorsController->showAuthorsAdmin();
        break;
    case 'libros':
        $booksController->showBooksAdmin();
        break;
    case 'addBook':
        $booksController->addBook();
        break;
    case 'deleteBook':
        $booksController->deleteBook($params[1]);
        break;
    case 'modBook':
        $booksController->modBook($params[1]);
        break;
    case 'updateBook':
        $booksController->updateBook($params[1]);
        break;
    case 'addAuthor':
        $authorsController->addAuthor();
        break;
    case 'deleteAuthor':
        $authorsController->deleteAuthor($params[1]);
        break;
    case 'modAuthor':
        $authorsController->modAuthor($params[1]);
        break;
    case 'updateAuthor':
        $authorsController->updateAuthor($params[1]);
    default:
        echo '404 Page not found!';
        break;
}