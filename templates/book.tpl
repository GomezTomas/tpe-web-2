{include file="header.tpl"}
<h2>{$book->titulo}<h1>
<h3>{$author}
<h4>{$book->genero}</h3>
<p>{$book->descripcion}</p>
<div class="visually-hidden" id="id-libro">{$book->id_libro}</div>
<div class="visually-hidden" id="rol">{$rol}</div>
{if $logged}
<form action="addComment">
    <div class="row">
        <div class="col-7">
            <textarea class="form-control" rows="3" name="comment" placeholder="Ingrese un comentario"></textarea>
        </div>
        <div class="col">
            <select class="form-select" name="puntuacion">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
            <button type="submit" class="btn btn-outline-primary form-control">Comentar</button>
        </div>
    </div>
</form>
{/if}
{include file="vue/comments.tpl"}
<script src="./js/app.js"></script>

{include file="footer.tpl"}