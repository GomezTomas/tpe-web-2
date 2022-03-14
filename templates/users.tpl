{include file='header.tpl'}
<h3>Usuarios</h3>
    <ul class="list-group list-group-flush">
        {foreach from=$users item=$user}
        <li class="list-group-item">
            <div class="row">
                <div class="col">
                    <span>{$user->email}</span>
                </div>
                <div class="col btn-group">
                    <a class="btn btn-outline-danger btn-sm" href="deleteUser/{$user->id}">Borrar Usuario</a> 
                    <a class="btn btn-outline-primary btn-sm" href="adminUser/{$user->id}">Hacer Admin</a>
                    <a class="btn btn-outline-secondary btn-sm" href="deleteAdmin/{$user->id}">Eliminar Admin</a>
                </div>
            </div>    
        </li>
        {/foreach}
    </ul>
{include file='footer.tpl'}
