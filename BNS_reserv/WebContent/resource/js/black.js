/* 사이드바 열림 애니메이션 (클릭이벤트) */
var nav = document.getElementById('nav');
window.onload = function() {
	nav.onclick();

}
function openNav() {
	document.getElementById("sidenav").style.width = "110px";
}


