var btnLogin = document.getElementById('btnLogin');
var PaginaAdm = document.getElementById('paginaAdm');


function toApage(){

    var l = document.getElementById('txtEmail').value;
    if(l == "admin"){
      window.location.href = PaginaAdm;
    }
}
btnLogin.addEventListener('click',toApage);