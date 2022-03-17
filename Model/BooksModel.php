<?php

class BooksModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_library;charset=utf8', 'root', '');
    }

    function getBooks($search){
        $sentencia = $this->db->prepare("SELECT * FROM libros WHERE titulo LIKE ?");
        $sentencia->execute(["%$search%"]);
        $books = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $books;
    }

    function getBook($id){
        $sentencia = $this->db->prepare("SELECT * FROM libros WHERE id_libro=?");
        $sentencia->execute([$id]);
        $book = $sentencia->fetch(PDO::FETCH_OBJ);
        return $book;
    }

    function insertBook($titulo, $genero, $descripcion, $autor){
        $sentencia = $this->db->prepare("INSERT INTO libros(titulo, genero, descripcion, id_autor) VALUES(?, ?, ?, ?)");
        $sentencia->execute([$titulo, $genero, $descripcion, $autor]);
    }
    
    function deleteBook($id){
        $sentencia = $this->db->prepare("DELETE FROM libros WHERE id_libro=?");
        $sentencia->execute([$id]);
    }

    function updateBook($id, $titulo, $genero, $descripcion, $autor){
        $sentencia = $this->db->prepare("UPDATE libros SET titulo=?, genero=?, descripcion=?, id_autor=? WHERE id_libro=?");
        $sentencia->execute([$titulo, $genero, $descripcion, $autor, $id]);
    }
}