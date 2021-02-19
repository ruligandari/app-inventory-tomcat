<%-- 
    Document   : prosesinputbarang
    Created on : Dec 22, 2020, 5:21:58 PM
    Author     : Ruli gandari
--%>

<%@page import="function.login"%>
<jsp:useBean id="ub" class="function.finputbarang"></jsp:useBean>
<jsp:setProperty property="*" name="ub"/>
<%
int i=login.savebarang(ub);
if(i>0){
out.print("<script> alert('Input Data Sukses !'); </script>");
%>
<jsp:include page="tambah_barang.jsp" />
<% } else{
out.print("<script> alert('Input Data Gagal!'); </script>");
%>
<jsp:include page="tambah_barang.jsp" />
<% }
response.sendRedirect("../index.jsp?folder=home&file=tambah_barang.jsp");
%>
