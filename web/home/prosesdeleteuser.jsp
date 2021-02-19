<%-- 
    Document   : prosesdeleteuser
    Created on : Dec 24, 2020, 5:39:08 PM
    Author     : Ruli gandari
--%>

<%@page import="function.login"%>
<jsp:useBean id="u" class="function.flogin"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%

int i=login.deleteuser(u);
if (i != 0){
out.print("<script> alert('Delete Sukses'); </script>");   
%>
<jsp:include page="tbl_user.jsp" />
<%   
}else {
 out.print("<script> alert('Delete Gagal!'); </script>");     
}
%>
