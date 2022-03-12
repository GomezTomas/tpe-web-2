{include file='header.tpl'}
<form action="updateBook/{$id}" method="POST">
    <input type="text" name="titulo" value="{$book->titulo}">
    <input type="text" name="genero" value="{$book->genero}">
    <input type="text" name="descripcion" value="{$book->descripcion}">
    <select name="autor">
        {foreach from=$authors item=$author}
            <option value="{$author->id_autor}"{if $author->id_autor == $book->id_autor}selected{/if}>{$author->apellido}, {$author->nombre}</option>
        {/foreach}
    </select>
    <input type="submit" value="Modificar Libro">
</form>
{include file='footer.tpl'}