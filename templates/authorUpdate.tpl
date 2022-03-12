{include file='header.tpl'}
<form action="updateAuthor/{$id}" method="POST">
        <input type="text" name="nombre" value="{$author->nombre}">
        <input type="text" name="apellido" value="{$author->apellido}">
        <input type="text" name="nacionalidad" value="{$author->nacionalidad}">
        <input type="submit" value="Modificar Autor">
</form>
{include file='footer.tpl'}
