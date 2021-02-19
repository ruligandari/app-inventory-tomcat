<%-- 
    Document   : prosesdeletejenis
    Created on : Dec 24, 2020, 11:13:55 AM
    Author     : Ruli gandari
--%>

<%@page import="function.login"%>
<jsp:useBean id="u" class="function.finputjenis"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%

int i=login.deletejenis(u);
%>
<jsp:include page="tbl_jenis.jsp" />
<%
out.print("<script> alert('Delete Sukses'); </script>");
%>
