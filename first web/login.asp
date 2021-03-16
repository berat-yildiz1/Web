<%
dim username, user

Response.Buffer=True
Response.Expires = -100
 	
username=request.form("username")
userpwd=request.form("userpwd")

Veritabani_Yol=SERVER.MAPPATH("data.mdb")
Set Baglanti=Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")

Sorgu="select * from Kisiler where eposta = '" & request.form("username") & "' and sifre = '" & Request.form("userpwd") & "'"
    Set grup = Baglanti.Execute(sorgu) 'ppp
    

		Rs.Open Sorgu, Baglanti, 1, 3
		If RS.BOF And RS.EOF Then
		    Response.Write "Bilgiler onaylanmadi. Yanlis Kullanici Adi veya Sifre."
		Else
		    user = grup("ad")
	        Session("UserLoggedIn") = user 
	     	Response.Write "Bilgiler onaylandi."
	     	%>
	     	
 			<a href="index.html">Devam etmek için tiklayiniz...</a>		
 		<%
 		End If
 		%>