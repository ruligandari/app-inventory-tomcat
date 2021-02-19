<%-- 
    Document   : prosesdeletebarang
    Created on : Dec 23, 2020, 10:23:21 PM
    Author     : Ruli gandari
--%>

<%@page import="function.login"%>
<jsp:useBean id="u" class="function.finputbarang"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%

int i=login.delete(u);
%>
<jsp:include page="tbl_brg_masuk.jsp" />
<%
out.print("<script> alert('Delete Sukses'); </script>");
%>
