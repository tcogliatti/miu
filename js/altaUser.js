"use strict"

var tel = new Vue({
    el: '#boxTel',
    data: {
        counterTel: 1,
    },
    method:{
       
    }
});

// chechkbox Redes
let switchInsta = document.querySelector("#switchInsta");
switchInsta.addEventListener("click", allowInputInsta);

function allowInputInsta(){
    let instaIco = document.querySelector("#instaIco");
    instaIco.classList.toggle("ico-off");
    instaIco.classList.toggle("ico-on");
    let inputInsta = document.querySelector("#inputInsta");
    inputInsta.disabled = !switchInsta.checked;
}

let switchFb = document.querySelector("#switchFb");
switchFb.addEventListener("click", allowInputFb);

function allowInputFb(){
    let faceIco = document.querySelector("#faceIco");
    faceIco.classList.toggle("ico-off");
    faceIco.classList.toggle("ico-on");
    let inputFb = document.querySelector("#inputFb");
    inputFb.disabled = !switchFb.checked;
}

// checkbox Metodos de pago
let switchMP = document.querySelector("#switchMP");
switchMP.addEventListener("click", allowInputMP);

function allowInputMP(){
    let icoMP = document.querySelector("#icoMP");
    icoMP.classList.toggle("ico-off");
    icoMP.classList.toggle("ico-on");
    let inputMP = document.querySelector("#inputMP");
    inputMP.disabled = !switchMP.checked;
}

let switchBco = document.querySelector("#switchBco");
switchBco.addEventListener("click", allowInputBco);

function allowInputBco(){
    let icoBco = document.querySelector("#icoBco");
    icoBco.classList.toggle("ico-off");
    icoBco.classList.toggle("ico-on");
    let inputCBU = document.querySelector("#inputCBU");
    inputCBU.disabled = !switchBco.checked;
    inputBco = document.querySelector("#inputBco");
    inputBco.disabled = !switchBco.checked;
}

// check only number
function checkOnlyNumber(evt){
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode < 48 || charCode > 57)
        evt.preventDefault()
}

// Documento
let docInput = document.querySelector("#docInput");
let radBtnDNI = document.querySelector("#docment1");
let radBtnCuit = document.querySelector("#docment2");
radBtnDNI.addEventListener("click", placeHolderInput)
radBtnCuit.addEventListener("click", placeHolderInput)
function placeHolderInput() {
    if(!radBtnDNI.checked)
        docInput.placeholder="CUIT sin guiones";
    else
        docInput.placeholder="DNI sin puntos";
}

//  Recolectar Datos de formulario y enviar
let btnSubmit = document.querySelector("#submitForm");
let formAltaUsr = document.querySelector("#formAltaUsr");
// btnSubmit.addEventListener("click", verifyData);

function verifyData(e){
    e.preventDefault();
    let form = new FormData(formAltaUsr);
    let data = {
        "nombre": form.get("first_name"),
        "apellido": form.get("last_name"), 
        "email": form.get("email"),
        "tel": "",

    }
    console.log(data);
}

async function altaUser(e){
    e.preventDefault();

    let form = new FormData(formulario);
    if (form.get("comentarios") == "") {
        console.log("campo vacio");
    }else{
        let comentario = {
            "comentario": form.get("comentarios"),
            "puntaje": form.get("puntajeComentarios"),
            "id_cancion": form.get("id_cancion")
        }

        try{
            let resp = await fetch(URL+"/canciones/", {
                "method": "POST",
                "headers": { "Content-type": "application/json" },
                "body": JSON.stringify(comentario)
            });       
            if (resp.ok) {
                console.log("se agrego comentario correctamente");
                getComents();
                comentario_input.value = "";
            }
        }catch (error) {
            console.log("error catch");
        }
    }
}