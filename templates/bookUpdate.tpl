{include file='header.tpl'}
<form action="updateBook/{$id}" method="POST">
    <div class="input-group mb-3">
        <input class="form-control" type="text" name="titulo" value="{$book->titulo}">
        <input class="form-control" type="text" name="genero" value="{$book->genero}">
        <select class="form-select" name="autor">
            {foreach from=$authors item=$author}
                <option value="{$author->id_autor}"{if $author->id_autor == $book->id_autor}selected{/if}>{$author->apellido}, {$author->nombre}</option>
            {/foreach}
        </select>
    </div>
    <div class="input-group mb-3">
        <textarea class="form-control" rows="10" name="descripcion" placeholder="Descripcion">{$book->descripcion}</textarea>
    </div>
    <div class="input-group mb-3">
        <input class="btn btn-outline-primary form-control" type="submit" value="Modificar Libro">
    </div>
</form>
{include file='footer.tpl'}