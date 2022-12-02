var btnAdiconarLogin = document.getElementById('btnAdicionarUsu');
const popC = document.getElementById('pop2');
const fpop = document.getElementById('fundo2')

function pop(){

    const fpop = document.getElementById('fundo2')

    fpop.style.display = "block";
    fpop.style.justifyContent = "center"
    fpop.style.display = "flex";

}
btnAdiconarLogin.addEventListener('click',pop);

function fechar(){
    fpop.style.display="none";
}
