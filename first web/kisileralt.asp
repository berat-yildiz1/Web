
<!doctype html>
<html>
<head>
<%
if Session("UserLoggedIn")="bos" then
Response.Redirect ("giris.asp")
end if
%>
<meta charset="utf-8">
<title>Kişi Detay</title>
  
<style>
@import url('https://fonts.googleapis.com/css?family=Permanent+Marker');

body{
    background:#252525;
    font-family: sans-serif;
}
 
.sayfa{
	
	position:relative;
    width: 950px;
	height:1500px	;
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
 color:#333;
}
.mes a{
	text-decoration: none;
	color: #fff;
}
a:hover {
    color: #DD0000;
    text-decoration: none;
	transition-duration:0.5s;
    
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
	.yrm1{
	width:150px;
	height:50px;
	}
	.yrm2{
	width:200px;
	height:50px;
	}
	.yrm3{
	width:600px;
	height:50px;
	}
	textarea{
	
	border: 2px solid #333;
	width: 350px; 
	height: 90px;
	margin: 10px 0px 0px 330px;
	}
	button {

  background: #cfcfcf;
  width: 130px;
  height:50px;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 20px;
  cursor: pointer;
  margin: 10px 0px 0px 330px;
  
}
button:hover,.form button:active,.form button:focus {
  background: #f4a460;
}
.ayrac{
float:left;
width:100%;
height:300px;
background-color:white;
margin-bottom:50px;

}
.ft1,.ft2,.ft3{
	float:left;
	width:31%;
	height:300px;
	background-color:white;
	margin-left:17px;
}
.ft12{
position:relative;
float:left;
height:10px;
width:100%;
background-color:white;
top:290px;
}
img {

width: 100%;

height:290px;
margin:0px;
top:10px;
}
.add{
width:100%;
height:40px;
font-size:40px;
text-align:middle;
background-color:white;
margin-bottom:30px;

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
    <p class="hed">Kişi Detay</p>
    </div>
	<div class="add"><b><center>ÜNVAN--KİŞİ ADI</center></b></div>
	<div class="ayrac">
		<div class="ft1"><div class="ft12"><b><center>1980</center></b></div><img src="fotoraflar/130.jpg"  alt="Fotoğraf Başlığı" /></div>
		<div class="ft2"><div class="ft12"><b><center>2010</center></b></div><img src="fotoraflar/13.jpg"  alt="Fotoğraf Başlığı" /></div>
		<div class="ft3"><div class="ft12"><b><center>2019</center></b></div><img src="fotoraflar/133.jpg"  alt="Fotoğraf Başlığı" /></div>
	
	</div>
		<table border=2  bordercolor=#333 >
<tr>
<th class="yrm1">Ne Zaman ?</th>
<th class="yrm2" >Kim ?</th>
<th class="yrm3">Ne Yazmış ?</th>
</tr>
<tr>
<td class="yrm1">21:46--28.04.2019</td>
<td class="yrm2" >Berat Yıldız</td>
<td class="yrm3">Deneme vol .123123</td>
</tr>
<tr>
<td class="yrm1">22:16--28.04.2019</td>
<td class="yrm2" >Refik Zolat</td>
<td class="yrm3">Bu site bir harika dostum</td>
</tr>
<tr>
<td class="yrm1">17:56--28.04.2019</td>
<td class="yrm2" >Burhanettin Liyal</td>
<td class="yrm3">bırak bu işi</td>
</tr>
<tr>
<td class="yrm1">13:12--28.04.2019</td>
<td class="yrm2" >Faruk Ateş</td>
<td class="yrm3">Deneme Deneme</td>
</tr>
<tr>
<td class="yrm1">17:11--28.06.2019</td>
<td class="yrm2" >Osman Sadi</td>
<td class="yrm3">Kayıt 2121</td>
</tr>
<tr>
<td class="yrm1">16:16--28.02.2019</td>
<td class="yrm2" >Arzu Tiz</td>
<td class="yrm3">IIIIIIIIIIIIIIIIIIIIIIIIII</td>
</tr>
</table>
  
  <textarea  rows="4" name="adres" cols="23" required placeholder="Yorumunuzu Buraya Yazınız"></textarea>
  <button type="submit" name="kaydet" id="kaydet" >Gönder</button>
	
   
    <div class="alt">
    <p>
            <a href="index.asp">Anasayfa</a> | <a href="kimnerde.html">Kim-Nerde-Ne yapıyor?</a> | <a href="kayt.asp">Kayıt Ol</a> | <a href="kisiler.html">Kişiler</a> | <a href="harita.html">Harita</a> | </p>
            <p>
            © 2019 KARABUK UNIVERSITESI | Tasarım:Berat Yıldız  <a href="#">brtyldzq@gmail.com</a>
            </p>
	 		
    </div>
	<div href="" class="geri" ><a href="kisiler.asp">ÖNCEKİ SAYFA</a></div>
</div>
     
</body>
</html>