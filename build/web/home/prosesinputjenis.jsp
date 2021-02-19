<%-- 
    Document   : prosesinputjenis
    Created on : Dec 22, 2020, 6:51:04 PM
    Author     : Ruli gandari
--%>

<%@page import="function.login"%>
<jsp:useBean id="uj" class="function.finputjenis"></jsp:useBean>
<jsp:setProperty property="*" name="uj"/>

<%
String Id_jenis = request.getParameter("id_jenis");
if(Id_jenis.equals("")){
out.print("<script> alert('ID Jenis tidak boleh kosong'); </script>");
%>
<jsp:include page="tambah_jenis.jsp" />
<%}else {
int i=login.savejenis(uj);
if(i>0){
out.print("<script> alert('Input Data Berhasil !'); </script>");
%>
<jsp:include page="tambah_jenis.jsp" />
<%
}else{
out.print("<script> alert('Input Data Gagal !'); </script>");
%>
<jsp:include page="tambah_jenis.jsp" />
<% }
} 
response.sendRedirect("../index.jsp");
%>