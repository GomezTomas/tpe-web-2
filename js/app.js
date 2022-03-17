"use strict;"

const API_URL = "api/comentarios";

let idLibro = document.querySelector("#id-libro").dataset.id;
let rol = document.querySelector("#id-libro").dataset.rol;
let submitComment = document.querySelector("#comentar");
let orderAsc = document.querySelector("#asc");
let orderDesc = document.querySelector("#desc");
let filter = document.querySelector("#filter");
let show = document.querySelector("#show");

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

show.addEventListener("click", e => {
    getComments(API_URL);
});

filter.addEventListener("click", e => {
    e.preventDefault();
    let data = new FormData(document.querySelector("#comments-filter"));
    let url = API_URL + "?puntuacion=" + data.get("puntuacion");
    getComments(url);
});

orderAsc.addEventListener("click", e => {
    let url = API_URL + "?order=" + e.target.id;
    getComments(url);
});

orderDesc.addEventListener("click", e => {
    let url = API_URL + "?order=" + e.target.id;
    getComments(url);
});

if(submitComment){
    submitComment.addEventListener("click", addComment);
}

async function getComments(url){
    try {
        console.log(url);
        let response = await fetch(url);
        let comments = await response.json();
        app.comments = comments;
    } catch (error) {
        console.log(error);
    }
}

getComments(API_URL);

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