
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>FORUM</title>
  
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
  margin-top:15px;
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
#kaydet{

margin:auto;
margin-top:10px;
}
#sil{

margin:auto;
margin-top:13px;
}

</style> 
</head>
    
<body>
 
<div class="sayfa">
<div class="ust">
    <p class="hed">KULLANICI FORUM</p>
    </div>
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("data.mdb"))
ssql="select * from forum; "
Set oRS = oConn.Execute(sSQL)
%>

		<table border=2  bordercolor=#333 >
<tr>
<th class="yrm1">Ne Zaman ?</th>
<th class="yrm2" >Ad ?</th>
<th class="yrm2" >Soyad ?</th>
<th class="yrm3">Ne Yazmış ?</th>
</tr>
<%
Do While NOT oRS.EOF 
%>

<tr>
<td class="yrm1"><%=oRS("nezaman")%></td>
<td class="yrm1"><%=oRS("ad")%></td>
<td class="yrm2" ><%=oRS("soyad")%></td>
<td class="yrm3"><%=oRS("neyazmis")%></td>
</tr>

<%	
	oRS.MoveNext
Loop
%>
</table>
<%
oConn.Close
Set oRS = Nothing
Set oConn = Nothing
%>


  <div class="form">
<form class="kyt" method="POST" action="Verigirforum.asp"  >
<input type="text" name="ad" id="ad" required placeholder="Lütfen Adınızı Girin">
<input type="text"name="soyad"id="soyad" required placeholder="Lütfen Soyadınızı Girin">
<textarea rows="4" name="neyazmis" cols="23" style="margin: 0px; width: 300px; height: 90px;" required placeholder="Yorumunuz"></textarea>
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