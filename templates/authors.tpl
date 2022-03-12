<div class="col">    
    <h3>Autores</h3>
    <ul class="list-group list-group-flush">
        {foreach from=$authors item=$author}
            <li class="list-group-item"><a href="showAuthor/{$author->id_autor}">{$author->nombre} {$author->apellido}</a></li>
        {/foreach}
    </ul>
</div>