<?php 

require_once 'libs/Router.php';
require 'Controller/ApiController.php';

$router = new Router();

$router->addRoute('comentarios', 'GET', 'ApiController', 'getComments');
$router->addRoute('comentarios/:ID', 'GET', 'ApiController', 'getComment');
$router->addRoute('comentarios', 'POST', 'ApiController', 'addComment');
$router->addRoute('comentarios/:ID', 'DELETE', 'ApiController', 'deleteComment');

$router->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);