<%-- 
    Document   : prosesinputuser
    Created on : Dec 24, 2020, 4:55:37 PM
    Author     : Ruli gandari
--%>

<%@page import="function.login"%>
<jsp:useBean id="ub" class="function.flogin"></jsp:useBean>
<jsp:setProperty property="*" name="ub"/>
<%
int i=login.saveuser(ub);
if(i>0){
out.print("<script> alert('Input Data Sukses !'); </script>");
%>
<jsp:include page="tambahuser.jsp" />
<% } else{
out.print("<script> alert('Input Data Gagal!'); </script>");
%>
<jsp:include page="tambahuser.jsp" />
<% }
response.sendRedirect("../index.jsp?folder=home&file=tambahuser.jsp");
%>
