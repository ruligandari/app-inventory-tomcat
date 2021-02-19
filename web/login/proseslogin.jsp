<%-- 
    Document   : proseslogin
    Created on : Dec 19, 2020, 7:03:19 PM
    Author     : Ruli gandari
--%>

 <%@page import="function.koneksi"%>
<%@page import="java.sql.*"%>
<%

  try{
        Connection con = koneksi.getKoneksi();
        ResultSet rs = null;
        PreparedStatement ts = null;
        String dbusername,dbpassword,username,password,dbnama;
        int dbuser;
        username = request.getParameter("username");
        password = request.getParameter("password");
        ts = con.prepareStatement("SELECT * FROM tbl_user WHERE username = ? AND password=?");
        ts.setString(1, username);
        ts.setString(2, password);
        rs = ts.executeQuery();
        if(rs.next()){
            dbusername = rs.getString("username");
            dbpassword = rs.getString("password");
            dbuser = rs.getInt("id_user");
            dbnama = rs.getString("nama");
            if(username.equals(dbusername)&&password.equals(dbpassword)){
                session.setAttribute("session", dbuser);
                session.setAttribute("nama", dbnama);
                response.sendRedirect("index.jsp");
            }else{
               
             }
        } else {
             out.print("<script> alert('Username atau Password Salah'); </script>");
                %>
                <jsp:include page="login.jsp"></jsp:include>
                <%
        con.close();
        }
        }
  catch(Exception e){
      System.out.println(e);
  }
%>


<%--<%@page import="function.login"%>
<jsp:useBean id="obj" class="function.flogin"/>
<jsp:setProperty property="*" name="obj"/>
<%
boolean status=login.validate(obj);
if(status){
session.setAttribute("session","TRUE");
response.sendRedirect("index.jsp");
%>
<%
}
else
{
out.print("<script> alert('Username atau Password Salah'); </script>");
%>
<jsp:include page="login.jsp"></jsp:include>
<%
}
%>--%>
