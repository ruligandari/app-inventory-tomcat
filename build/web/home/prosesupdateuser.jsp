<%-- 
    Document   : prosesupdateuser
    Created on : Dec 24, 2020, 5:13:10 PM
    Author     : Ruli gandari
--%>

<%@page import="function.login"%>
<jsp:useBean id="u" class="function.flogin"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=login.updateuser(u);
if (i!=0){
 out.print("<script> alert('Update Sukses'); </script>");   
} else {
  out.print("<script> alert('Error update data'); </script>");     
}

%>
<jsp:include page="tbl_user.jsp" />
