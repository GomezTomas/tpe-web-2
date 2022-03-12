<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}"
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="container">
        <nav class="nav">
            <a class="nav-link" href="home">Home</a>
            {if $logged}
            <a class="nav-link" href="showBooks">Libros</a>
            <a class="nav-link" href="showAuthors">Autores</a>
            <a class="nav-link" href="logout">Cerrar Sesion</a>
            {else}
            <a class="nav-link" href="login">Iniciar Sesion</a>
            {/if}
        </nav>
        <h1>Biblioteca</h1>
        <div class="row">
