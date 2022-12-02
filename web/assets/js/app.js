
var popup = document.getElementById('pop');
var fundopopup = document.getElementById('fundo');

function Abrirpopup(){

    fundopopup.style.display = "block";
    fundopopup.style.alignItems = "center";
    fundopopup.style.justifyContent="center";
    fundopopup.style.display = "flex";

}
var btnAbrir = document.getElementById('btnAbrirpop');
btnAbrir.addEventListener('click', Abrirpopup);
function fecharpop(){

    fundopopup.style.display="none";
    
    

}
var btnFechar = document.getElementById('btnFecha');
btnFechar.addEventListener('click',fecharpop);

       


