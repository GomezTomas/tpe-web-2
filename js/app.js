"use strict;"

const API_URL = "api/comentarios";

let idLibro = document.querySelector("#id-libro").innerHTML;
let rol = document.querySelector("#rol").innerHTML;

async function getComments(){
    try {
        let response = await fetch(API_URL);
        let comments = await response.json();
        app.comments = comments;
    } catch (error) {
        console.log(e);
    }
}

let app = new Vue({
    el : "#comments-list",
    data : {
        comments: [],
        libro: idLibro,
        rol: rol,
    }
})

getComments();
console.log(rol);