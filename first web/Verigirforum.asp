
<% 
'kutuyu boş bırakmayı engelleme
If trim(request("ad"))="" then  
response.write ("<b>Eksik Bilgi! </b> Lütfen bos birakmayiniz.   [ <a href=""javascript:history.back()"">Geri</a> ]<br><br> ")
response.end  
end if

'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("data.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "forum", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma

Tablom("ad") =  request("ad")
Tablom("soyad") =  request("soyad")
Tablom("nezaman") =  FormatDateTime(Now)
Tablom("neyazmis") =  request("neyazmis")

'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

response.write "Veri Girisi Yapilmistir"
response.redirect("forum.asp")
%>
<p><a href="giris.html">Girise Gitmek Icin Tiklayiniz</a></p>