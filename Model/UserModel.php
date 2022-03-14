<?php

class UserModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_library;charset=utf8', 'root', '');
    }

    function getUsers(){
        $sentencia = $this->db->prepare("SELECT * FROM usuarios");
        $sentencia->execute();
        $users = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $users;
    }

    function getUser($email){
        $sentencia = $this->db->prepare("SELECT * FROM usuarios WHERE email = ?");
        $sentencia->execute([$email]);
        $user = $sentencia->fetch(PDO::FETCH_OBJ);
        return $user;
    }

    function addUser($email, $password){
        $sentencia = $this->db->prepare("INSERT INTO usuarios(email, password, rol) VALUES(?, ?, ?)");
        $sentencia->execute([$email, $password, 0]);
    }

    function deleteUser($id){
        $sentencia = $this->db->prepare("DELETE FROM usuarios WHERE id=?");
        $sentencia->execute([$id]);
    }

    function updateUser($id, $rol){
        $sentencia = $this->db->prepare("UPDATE usuarios SET rol=? WHERE id=?");
        $sentencia->execute([$rol, $id]);
    }
}