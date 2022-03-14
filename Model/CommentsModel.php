<?php

class CommentsModel{
    
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_library;charset=utf8', 'root', '');
    }

    function getComments(){
        $sentencia = $this->db->prepare('SELECT * FROM comentarios');
        $sentencia->execute();
        $comments = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $comments;
    }

    function getComment($id){
        $sentencia = $this->db->prepare("SELECT * FROM comentarios WHERE id_comentario = ?");
        $sentencia->execute([$id]);
        $comment = $sentencia->fetch(PDO::FETCH_OBJ);
        return $comment;
    }

    function addComment($comentario, $puntuacion, $id_user, $id_libro){
        $sentencia = $this->db->prepare("INSERT INTO comentarios(comentario, puntuacion, id_user, id_libro) VALUES(?, ?, ?, ?)");
        $sentencia->execute([$comentario, $puntuacion, $id_user, $id_libro]);
    }

    function deleteComment($id){
        $sentencia = $this->db->prepare("DELETE FROM comentarios WHERE id_comentario=?");
        $sentencia->execute([$id]);
    }
}