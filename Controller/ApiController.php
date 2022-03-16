<?php

require_once './Model/CommentsModel.php';
require_once './View/ApiView.php';

class ApiController{

    private $model;
    private $view;

    function __construct(){
        $this->model = new CommentsModel();
        $this->view = new ApiView();
    }

    function getBody(){
        $bodyString = file_get_contents("php://input");
        return json_decode($bodyString);
    }

    function getComments(){
        if(isset($_GET['order'])){
            if($_GET['order'] == 'asc'){
                $comments = $this->model->getCommentsAsc();
                return $this->view->response($comments, 200);
            }else if($_GET['order'] == 'desc'){
                $comments = $this->model->getCommentsDesc();
                return $this->view->response($comments, 200);
            }
        }else{
            $comments = $this->model->getComments();
            return $this->view->response($comments, 200);
        }
    }

    function getComment($params = []){
        $idComment = $params[':ID'];
        $comment = $this->model->getComment($idComment);
        if($comment){
            return $this->view->response($comment, 200);
        }else{
            return $this->view->response("comentario inexistente", 404);
        }
    }

    function addComment(){
        $body = $this->getBody();
        if(!empty($body->comentario) && !empty($body->puntuacion) && !empty($body->id_user) && !empty($body->id_libro)){
            $this->model->addComment($body->comentario, $body->puntuacion, $body->id_user, $body->id_libro);
            return $this->view->response("Comentario insertado", 200);
        }else{
            return $this->view->response("Datos incorrectos", 400);
        }
    }

    function deleteComment($params = []){
        $idComment = $params[':ID'];
        $comment = $this->model->getComment($idComment);
        if($comment){
            $this->model->deleteComment($idComment);
            return $this->view->response("Eliminado correctamente", 200);
        }else{
            return $this->view->response("No se encontro el comentario", 400);
        }
    }

}