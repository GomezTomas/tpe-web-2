{include file="header.tpl"}
<div id="id-libro" data-id="{$book->id_libro}" data-rol="{$rol}">
    <h2>{$book->titulo}<h2>
</div>
<h3>{$author}
<h4>{$book->genero}</h3>
<p>{$book->descripcion}</p>
{if $logged}
<form id="form-comments">
    <div class="row">
        <div class="col-7">
            <textarea class="form-control" rows="3" name="comment" placeholder="Ingrese un comentario"></textarea>
        </div>
        <div class="col">
            <select class="form-select" name="puntuacion" id="select-puntuacion">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
            <button type="submit" class="btn btn-outline-primary form-control" id="comentar">Comentar</button>
        </div>
    </div>
</form>
{/if}
<div id="comments" data-user = "{$id}">
    {include file="vue/comments.tpl"}
</div>
<div class=row>
<div class=col>
<button id="asc" class="btn btn-outline-primary form-control">Ordernar asc</button>
</div>
<div class=col>
<button id="desc" class="btn btn-outline-primary form-control">Ordernar desc</button>
</div>
</div>

<script src="js/app.js"></script>

{include file="footer.tpl"}