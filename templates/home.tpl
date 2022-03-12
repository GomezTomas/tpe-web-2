{include file='header.tpl'}
<div class="col">
    <h3>Libros</h3>
    <ul class="list-group list-group-flush">
        {foreach from=$books item=$book}
            <li class="list-group-item"><a href="showBook/{$book->id_libro}">{$book->titulo}</a>, Autor: {$authors[$book->id_autor]}</li>
        {/foreach}
    </ul>
</div>
