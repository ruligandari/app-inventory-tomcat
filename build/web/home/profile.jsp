<%-- 
    Document   : edit_tbl_user
    Created on : Dec 24, 2020, 5:05:30 PM
    Author     : Ruli gandari
--%>

<%@page import="java.util.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%@page import="function.*"%>
<%
    
 String id = request.getParameter("id_user");
 flogin u = login.getRecordByIduser(id);

 %>
        
<div class="container-fluid">
     <div class="row justify-content-center">
    <div class="col-xl-8 col-lg-7">
        <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Profile</h6>
                        </div>
                        <div class="card-body">
                            <center>
                               <img class="img-profile rounded-circle" width="20%" height="20%" src="img/undraw_profile.svg">
                            </center>       
<div class="form-group">
   
    
 <div class="form-group">     
 <div class="form-group">
        <label for="exampleFormControlInput1">Nama</label>
        <input type="text" name="nama" value="<%=u.getNama()%>" readonly class="form-control" id="exampleFormControlInput1"  >
        </div>
    
 <div class="form-group"> 
 <label for="exampleFormControlInput2">Username</label>
         <input type="text" name="username" value="<%=u.getUsername()%>" readonly class="form-control" id="exampleFormControlInput2" placeholder="Jenis">
 </div> 
   </div>

        </div>


       </div>
   </div>
            </div>
    </div>
    </div>
    </div>
    </body>
</html>
