<!DOCTYPE html>
<html lang="tr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SGBA – Interactive UI Demo</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{
background:#0f0f1a;
font-family:Segoe UI,Arial,sans-serif;
min-height:100vh;
display:flex;
flex-direction:column;
align-items:center;
padding:24px 16px;
color:#fff;
}
.topbar{
display:flex;
gap:10px;
align-items:center;
margin-bottom:14px;
flex-wrap:wrap;
justify-content:center;
}
.lang-btn{
padding:8px 14px;
border:none;
border-radius:10px;
cursor:pointer;
background:#1DB873;
color:#fff;
font-weight:600;
}
.lang-btn.secondary{
background:rgba(255,255,255,.08);
}
h2{font-size:18px;text-align:center}
.sub{font-size:12px;color:rgba(255,255,255,.55);text-align:center}

.phone{
margin-top:14px;
width:240px;
background:#0a0a0a;
border-radius:34px;
padding:14px;
border:2px solid #222;
}
.screen{
background:#1c1c2e;
border-radius:24px;
overflow:hidden;
min-height:460px;
}
.header{
padding:12px;
font-size:12px;
border-bottom:1px solid rgba(255,255,255,.06);
}
.section{padding:14px}
.row{
display:flex;
justify-content:space-between;
align-items:center;
padding:12px 0;
border-bottom:1px solid rgba(255,255,255,.05);
font-size:13px;
}
.small{
font-size:11px;
color:rgba(255,255,255,.5);
margin-top:3px;
}
.toggle{
width:34px;height:18px;border-radius:10px;
background:#555;position:relative;cursor:pointer;
}
.toggle:after{
content:'';
position:absolute;
width:14px;height:14px;border-radius:50%;
background:#fff;top:2px;left:2px;
transition:.25s;
}
.toggle.on{background:#1DB873}
.toggle.on:after{left:18px}
.btn{
margin-top:14px;
width:100%;
padding:10px;
border:none;
border-radius:10px;
background:#1DB873;
color:#fff;
font-weight:700;
cursor:pointer;
}
.status{
margin-top:14px;
font-size:12px;
color:#1DB873;
text-align:center;
line-height:1.5;
}
.footer-note{
max-width:300px;
margin-top:16px;
font-size:12px;
color:rgba(255,255,255,.6);
text-align:center;
line-height:1.6;
}
</style>
</head>
<body>

<div class="topbar">
<button class="lang-btn" onclick="setLang('tr')">Türkçe</button>
<button class="lang-btn secondary" onclick="setLang('en')">English</button>
</div>

<h2 id="title">SGBA — İnteraktif Demo</h2>
<div class="sub" id="subtitle">Görünmez hareket doğrulama sistemi</div>

<div class="phone">
<div class="screen">

<div class="header" id="headerText">
Ayarlar → Güvenlik → Görünmez Erişim
</div>

<div class="section">

<div class="row">
<div>
<div id="sgbaLabel">SGBA Aktif</div>
<div class="small" id="sgbaSub">Gesture ile gizli erişim</div>
</div>
<div class="toggle" id="tg1" onclick="toggle(this)"></div>
</div>

<div class="row">
<div>
<div id="gestureLabel">Gesture Kaydet</div>
<div class="small" id="gestureSub">Henüz kayıt yok</div>
</div>
</div>

<div class="row">
<div>
<div id="tolLabel">Tolerans</div>
<div class="small" id="tolSub">%85 · Standart</div>
</div>
</div>

<div class="row">
<div>
<div id="knoxLabel">Knox Biyometrik</div>
<div class="small" id="knoxSub">Ek güvenlik katmanı</div>
</div>
<div class="toggle" id="tg2" onclick="toggle(this)"></div>
</div>

<button class="btn" onclick="demoOpen()" id="openBtn">
Gizli Paneli Aç
</button>

<div class="status" id="status">
SGBA şu an pasif
</div>

</div>
</div>
</div>

<div class="footer-note" id="note">
Bu demo, Samsung cihazlarında sıfır görsel iz bırakan gizli erişim konseptini gösterir.
</div>

<script>
let lang="tr";

function toggle(el){
el.classList.toggle("on");
updateStatus();
}

function updateStatus(){
const on=document.getElementById("tg1").classList.contains("on");

if(lang==="tr"){
document.getElementById("status").innerText=
on ? "✅ SGBA aktif — gesture erişimi hazır" : "SGBA şu an pasif";
}else{
document.getElementById("status").innerText=
on ? "✅ SGBA active — gesture access ready" : "SGBA currently disabled";
}
}

function demoOpen(){
const on=document.getElementById("tg1").classList.contains("on");

if(lang==="tr"){
alert(on ? "🔓 Gizli Panel Açıldı" : "Önce SGBA'yı aktif edin");
}else{
alert(on ? "🔓 Hidden Panel Opened" : "Enable SGBA first");
}
}

function setLang(l){
lang=l;

if(l==="tr"){
title.innerText="SGBA — İnteraktif Demo";
subtitle.innerText="Görünmez hareket doğrulama sistemi";
headerText.innerText="Ayarlar → Güvenlik → Görünmez Erişim";
sgbaLabel.innerText="SGBA Aktif";
sgbaSub.innerText="Gesture ile gizli erişim";
gestureLabel.innerText="Gesture Kaydet";
gestureSub.innerText="Henüz kayıt yok";
tolLabel.innerText="Tolerans";
tolSub.innerText="%85 · Standart";
knoxLabel.innerText="Knox Biyometrik";
knoxSub.innerText="Ek güvenlik katmanı";
openBtn.innerText="Gizli Paneli Aç";
note.innerText="Bu demo, Samsung cihazlarında sıfır görsel iz bırakan gizli erişim konseptini gösterir.";
}else{
title.innerText="SGBA — Interactive Demo";
subtitle.innerText="Invisible gesture authentication system";
headerText.innerText="Settings → Security → Invisible Access";
sgbaLabel.innerText="SGBA Enabled";
sgbaSub.innerText="Hidden access via gesture";
gestureLabel.innerText="Register Gesture";
gestureSub.innerText="No gesture saved yet";
tolLabel.innerText="Tolerance";
tolSub.innerText="85% · Standard";
knoxLabel.innerText="Knox Biometric";
knoxSub.innerText="Additional security layer";
openBtn.innerText="Open Hidden Panel";
note.innerText="This demo presents a zero-visual-trace hidden access concept for Samsung devices.";
}

updateStatus();
}
</script>

</body>
</html>
