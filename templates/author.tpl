{include file='header.tpl'}
<h2>{$author->nombre} {$author->apellido}</h2>
<h4>{$author->nacionalidad}</h4>
<ul class="list-group list-group-flush">
    {foreach from=$libros item=$libro}
        <li class="list-group-item">{$libro}</li>
    {/foreach}
</ul>
{include file='footer.tpl'}