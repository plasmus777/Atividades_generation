const nome = document.getElementById("nome");
const email = document.querySelector("#email");
const assunto = document.getElementById("assunto");

var nomeOk = false;
var emailOk = false;
var assuntoOk = false;

function validarNome(){
    let txtNome = document.getElementById("txtNome");
    if(nome.value.length < 2){
        txtNome.innerText = "Nome Inválido";
        txtNome.style.color = "red";
        nomeOk = false;
        //alert("Nome Inválido");
    } else{
        txtNome.innerText = "Nome Válido";
        txtNome.style.color = "green";
        nomeOk = true;
    }
}

function validarEmail(){
    let txtEmail = document.getElementById("txtEmail");
    if(email.value.indexOf("@") == -1 || email.value.indexOf(".") == -1){
        txtEmail.innerText = "Email Inválido";
        txtEmail.style.color = "red";
        emailOk = false;
        //alert("Nome Inválido");
    } else{
        txtEmail.innerText = "Email Válido";
        txtEmail.style.color = "green";
        emailOk = true;
    }
}

function validarAssunto(){
    const txtAssunto = document.getElementById("txtAssunto");
    if(assunto.value.length < 5){
        txtAssunto.innerText = "Assunto Inválido";
        txtAssunto.style.color = "red";
        assuntoOk = false;
        //alert("Nome Inválido");
    } else{
        txtAssunto.innerText = "Assunto Válido";
        txtAssunto.style.color = "green";
        assuntoOk = true;
    }
}

function enviar(){
    if(nomeOk && emailOk && assuntoOk){
        alert("Enviado com sucesso!");
    } else{
        alert("Preencha os campos do formulário adequadamente!")
    }
}