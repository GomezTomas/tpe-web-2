{literal}
<h4>Comentarios</h4>
<ul id="comments-list" class="list-group list-group-flush">
    <li v-if="comment.id_libro == libro"class="list-group-item" v-for="comment in comments">{{ comment.comentario }} - {{ comment.puntuacion }}
    <a v-if="rol == 1" class="btn btn-outline-danger btn-sm " :id ="comment.id_comentario" v-on:click="deleteComment">Borrar</a></li>
</ul>
<div class=row>
    <div class=col>
        <button id="show" class="btn btn-outline-primary form-control">Mostrar Original</button>
    </div>
    <div class=col>
        <button id="asc" class="btn btn-outline-primary form-control">Ordernar ascendente</button>
    </div>
    <div class=col>
        <button id="desc" class="btn btn-outline-primary form-control">Ordernar descendente</button>
    </div>
</div>
<form class="row" id="comments-filter">
    <div class="col">
        <select class="form-select" name="puntuacion" id="select-puntuacion">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
    </div>
    <div class="col">
        <button type="submit" class="btn btn-outline-primary form-control" id="filter">Filtrar</button>
    </div>
</form>
{/literal}
