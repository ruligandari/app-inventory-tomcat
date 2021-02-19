<%-- 
    Document   : prosesupdatebarang
    Created on : Dec 23, 2020, 10:04:06 PM
    Author     : Ruli gandari
--%>
<%@page import="function.login"%>
<jsp:useBean id="u" class="function.finputbarang"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=login.update(u);
out.print("<script> alert('Update Sukses'); </script>");
%>
<jsp:include page="tbl_brg_masuk.jsp" />
