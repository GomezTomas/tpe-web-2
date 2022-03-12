<?php

class AuthorsModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_library;charset=utf8','root','');
    }

    function getAuthors(){
        $sentencia = $this->db->prepare("SELECT * FROM autores");
        $sentencia->execute();
        $autores = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $autores;
    }

    function getAuthor($id){
        $sentencia = $this->db->prepare("SELECT * FROM autores WHERE id_autor = ?");
        $sentencia->execute([$id]);
        $autor = $sentencia->fetch(PDO::FETCH_OBJ);
        return $autor;
    }
    
    function insertAuthor($nombre, $apellido, $nacionalidad){
        $sentencia = $this->db->prepare("INSERT INTO autores(nombre, apellido, nacionalidad) VALUES(?,?,?)");
        $sentencia->execute([$nombre, $apellido, $nacionalidad]);
    }

    function deleteAuthor($id){
        $sentencia = $this->db->prepare("DELETE FROM autores WHERE id_autor=?");
        $sentencia->execute([$id]);
    }

    function updateAuthor($nombre, $apellido, $nacionalidad, $id){
        $sentencia = $this->db->prepare("UPDATE autores SET nombre=?, apellido=?, nacionalidad=? WHERE id_autor=?");
        $sentencia->execute([$nombre, $apellido, $nacionalidad, $id]);
    }
}