
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>KAYIT OL</title>
  
<style>
@import url('https://fonts.googleapis.com/css?family=Permanent+Marker');
.kyt {
  
  width: 350px;
  padding: 8% 0 0;
  margin: auto;
  
}
.form {
  position: relative;
  background: #333;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  top:0px;
}
.form input {
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  background: #cfcfcf;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 20px;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #f4a460;
}


body{
    background:#252525;
    font-family: sans-serif;
}
 
.sayfa{
	
	position:relative;
    width: 950px;
	height:100%;
    margin:50px auto;
	background-color:white;
}
.alt{
	position:absolute;
	position:fixed;
    background: #555;
	padding-top:20px;
	padding-bottom:20px;
	width: 950px;
	
    text-align: center;
    color: #fff;
	bottom:0px;
	background-image:url(fotoraflar/foooter.png);
	background-size: 100% 100%;
}
.alt a{
	 text-decoration: none;
     color: #fff;
}
 

td{
 color:white;
}
.mes a{
	text-decoration: none;
	color: #fff;
}
a:hover {
    color: #DD0000;
    text-decoration: none;
    
}

form p{
 color:white;
 margin:5px;
}
#g1,#g2,#g3{
float:left;
width: 30%;
margin:5px;
margin-bottom:15px;
}
#cinsiyet,#cinsiyet2{
width: 30%;
margin:5px;
margin-bottom:15px;
}

#kaydet{
margin-bottom:15px;
}
label{
color:white;
}
.hed{
    background: #555;
	padding-top:20px;
	padding-bottom:20px;
	width: 950px;
	height:60px;
    text-align: center;
    color: #fff;
	font-size:50px;
	font-family: 'Permanent Marker', cursive;
	background-image:url(fotoraflar/header.png);
	background-size: 100% 120%;
	}
.geri{

position:fixed;
height:45px;
width:100px;
top:800px;
margin-left:930px;
padding-top:7px;
padding-left:20px;
background-color:#f4a460;
text-align:middle;
font-weight:bold;

}

.geri a {
text-decoration:none;
color:white;
}

.geri a:hover{
color:#333;
transition-duration:0.5s;
}

</style> 
</head>
    
<body>
 
<div class="sayfa">
<div class="ust">
    <p class="hed">KULLANICI KAYIT</p>
    </div>

<div class="form">
<form class="kyt" method="POST" action="Verigir.asp"  >


<input type="text" name="ad" id="ad" required placeholder="Lütfen Adınızı Girin">
<input type="text"name="soyad"id="soyad" required placeholder="Lütfen Soyadınızı Girin">
<input type="number" name="okulno" id="okulno" required placeholder="Lütfen Okul No Girin">
<input type="text"name="blm"id="bölüm" required placeholder="Lütfen Bölümünüzü Girin">
<input type="number"name="telno"id="telno" required placeholder="Lütfen Telefon No Girin">
<p>Doğum tarihi</p>
	<input type="number" name="gun" id="g1" min="1" max="31" required placeholder="Gün Girin">
	<input type="number" name="ay" id="g2" min="1" max="12" required placeholder="Ay Girin">
	<input type="number" name="yil" id="g3" min="1960" max="2002" required placeholder="Yıl Girin">
<textarea rows="4" name="adres" cols="23" style="margin: 0px; width: 250px; height: 50px;" required placeholder="Lütfen Adres Girin"></textarea>
<input type="password"name="sifre"id="sifre" required placeholder="Lütfen Şifre Girin">

<label for="cinsiyet">KADIN</label><input type="radio"name="cnsyt" id="cinsiyet"  value="kadın">
<label for="cinsiyet2">ERKEK</label><input type="radio" name="cnsyt" id="cinsiyet2" value="erkek">
<input type="number" name="yas" id="yas" min="18" max="100" required placeholder="Lütfen Yaşınızı Girin">
<input type="text" name="eposta" id="eposta" required placeholder="Lütfen Mail Adresinizi Girin" >
<button type="submit" name="kaydet" id="kaydet" >KAYDET</button>
<button type="reset" name="sil" id="sil" >TEMİZLE</button>

</form>
 </div>   
	
   
    <div class="alt">
    <p>
            <a href="index.html">Anasayfa</a> | <a href="kimnerde.html">Kim-Nerde-Ne yapıyor?</a> | <a href="kayt.html">Kayıt Ol</a> | <a href="kisiler.html">Kişiler</a> | <a href="harita.html">Harita</a> | </p>
            <p>
            © 2019 KARABUK UNIVERSITESI | Tasarım:Berat Yıldız  <a href="#">brtyldzq@gmail.com</a>
            </p>
    </div>
	<div href="" class="geri" ><a href="index.html">ÖNCEKİ SAYFA</a></div>
</div>       
</body>
</html>