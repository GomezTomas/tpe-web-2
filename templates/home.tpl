{include file='header.tpl'}
<div class="col">
    <h3>Libros</h3>
    <form action="home" method="GET">
    <div class="input-group mb-3">
        <input class="form-control" type="text" name="search" placeholder="Ingrese libro a buscar">
        <input class="btn btn-outline-primary form-control" type="submit" value="Buscar Libro">
    </div>
    </form>
    <ul class="list-group list-group-flush">
        {foreach from=$books item=$book}
            <li class="list-group-item"><a href="libro/{$book->id_libro}">{$book->titulo}</a>, Autor: {$authors[$book->id_autor]}</li>
        {/foreach}
    </ul>
</div>
