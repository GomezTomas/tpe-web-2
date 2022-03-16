{include file='header.tpl'}
<form action="updateAuthor/{$id}" method="POST">
        <div class="input-group mb-3">
                <input class="form-control" type="text" name="nombre" value="{$author->nombre}">
                <input class="form-control" type="text" name="apellido" value="{$author->apellido}">
                <input type="text" class="form-control" name="nacionalidad" value="{$author->nacionalidad}">
        </div>
        <div class="input-group mb-3">
                <input type="submit" class="btn btn-outline-primary form-control" value="Modificar Autor">
        </div>
</form>
{include file='footer.tpl'}
