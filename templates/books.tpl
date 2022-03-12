{include file='header.tpl'}
<h3>Agregar Libro</h3>
<form action="addBook" method="POST">
    <input type="text" name="titulo" placeholder="Titulo">
    <input type="text" name="genero" placeholder="Genero">
    <input type="text" name="descripcion" placeholder="Descripcion">
    <select name="autor">
        {foreach from=$authors item=$author}
            <option value="{$author->id_autor}">{$author->apellido}, {$author->nombre}</option>
        {/foreach}
    </select>
    <input type="submit" value="Agregar Libro">
</form>
<h3>Modificar o Eliminar Libro</h3>
<ul class="list-group list-group-flush">
    {foreach from=$books item=$book}
        <li class="list-group-item">
            <div class="row">
                <div class="col">
                    <a href="showBook/{$book->id_libro}">{$book->titulo}</a>, Autor: {$autores[$book->id_autor]} 
                </div>
                <div class="col btn-group">
                    <a class="btn btn-outline-danger btn-sm" href="deleteBook/{$book->id_libro}">Borrar</a> <a class="btn btn-outline-primary btn-sm" href="modBook/{$book->id_libro}">Modificar</a>
                </div>
            </div>    
        </li>
    {/foreach}
</ul>
{include file='footer.tpl'}