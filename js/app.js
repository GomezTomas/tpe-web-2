"use strict;"

const API_URL = "api/comentarios";

let idLibro = document.querySelector("#id-libro").dataset.id;
let rol = document.querySelector("#id-libro").dataset.rol;
let submitComment = document.querySelector("#comentar");
let orderAsc = document.querySelector("#asc");
let orderDesc = document.querySelector("#desc");

if(submitComment){
    submitComment.addEventListener("click", addComment);
}
if(orderAsc){
    orderAsc.addEventListener("click", e => {
        getCommentsOrder(e.target.id);
    });
}
if(orderAsc){
    orderDesc.addEventListener("click", e => {
        getCommentsOrder(e.target.id);
    });
}


async function getComments(){
    try {
        let response = await fetch(API_URL);
        let comments = await response.json();
        app.comments = comments;
    } catch (error) {
        console.log(error);
    }
}
async function getCommentsOrder(order){
    let url = API_URL + "?order=" + order;
    try {
        let response = await fetch(url);
        let comments = await response.json();
        app.comments = comments;
    } catch (error) {
        console.log(error);
    }
}

async function deleteComment(idComment){
    let url = (API_URL + `/${idComment}`);
    try{
        let response = await fetch(url, {
            method: 'DELETE'
        });
        if(response.ok){
            getComments();
        }
    }catch (error) {
        console.log(error);
    }
}

let app = new Vue({
    el : "#comments-list",
    data : {
        comments: [],
        libro: idLibro,
        rol: rol,
    },
    methods:{
        deleteComment: function(e){
            deleteComment(e.target.id)
        }
    }
})

getComments();

async function addComment(e){
    e.preventDefault();
    let formComments = new FormData(document.querySelector("#form-comments"));
    let comment = formComments.get("comment");
    let puntuacion = formComments.get("puntuacion");
    let idUser = document.querySelector("#comments").dataset.user;
    let idLibro = document.querySelector("#id-libro").dataset.id;

    let newComment = {
        "comentario": comment,
        "puntuacion": puntuacion,
        "id_user": idUser,
        "id_libro": idLibro
    }

    try {
        let response = await fetch (API_URL, {
            "method": "POST",
            "headers":{
                "Content-Type" : "application/json"
            },
            "body": JSON.stringify(newComment),
        })
        if (response.ok){
            getComments();
        }
    } catch (error) {
        console.log(error)
    }

}