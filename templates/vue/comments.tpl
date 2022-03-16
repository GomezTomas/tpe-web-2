{literal}
<h4>Comentarios</h4>
<ul id="comments-list" class="list-group list-group-flush">
    <li v-if="comment.id_libro == libro"class="list-group-item" v-for="comment in comments">{{ comment.comentario }} - {{ comment.puntuacion }}
    <a v-if="rol == 1" class="btn btn-outline-danger btn-sm " :id ="comment.id_comentario" v-on:click="deleteComment">Borrar</a></li>
</ul>
{/literal}
