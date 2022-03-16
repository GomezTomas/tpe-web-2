{include file='header.tpl'}
<h3>Agregar Autor</h3>
<form action="addAuthor" method="POST">
    <div class="input-group mb-3">
        <input class="form-control" type="text" name="nombre" placeholder="Nombre">
        <input class="form-control" type="text" name="apellido" placeholder="Apellido">
        <input type="text" class="form-control" name="nacionalidad" placeholder="Nacionalidad">
    </div>
    <div class="input-group mb-3">
        <input type="submit" class="btn btn-outline-primary form-control" value="Agregar Autor">
    </div>
</form>
<h3>Modificar o Eliminar Autor</h3>
<ul class="list-group list-group-flush">
    {foreach from=$authors item=$author}
        <li class="list-group-item">
            <div class="row">
                <div class="col">
                    <a href="showAuthor/{$author->id_autor}">{$author->nombre} {$author->apellido}</a>
                </div>
                <div class="col btn-group">
                    <a class="btn btn-outline-danger btn-sm" href="deleteAuthor/{$author->id_autor}">Borrar</a> <a class="btn btn-outline-primary btn-sm" href="modAuthor/{$author->id_autor}">Modificar</a>
                </div>
            </div>
        </li>
    {/foreach}
</ul>


{include file='footer.tpl'}
