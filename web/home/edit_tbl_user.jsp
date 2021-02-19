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
                            <h6 class="m-0 font-weight-bold text-primary">Update Data User</h6>
                        </div>
                        <div class="card-body">
<form action="index.jsp?folder=home&file=prosesupdateuser.jsp" method="post">
  
<div class="form-group">
        <label for="exampleFormControlInput1">ID User</label>
        <input type="text" name="id_user" value="<%=u.getId_user()%>" class="form-control" id="exampleFormControlInput1" readonly="readonly">
        </div>
    
 <div class="form-group">     
 <div class="form-group">
        <label for="exampleFormControlInput1">Nama</label>
        <input type="text" name="nama" value="<%=u.getNama()%>" class="form-control" id="exampleFormControlInput1" >
        </div>
    
 <div class="form-group"> 
 <label for="exampleFormControlInput2">Username</label>
         <input type="text" name="username" value="<%=u.getUsername()%>" class="form-control" id="exampleFormControlInput2" placeholder="Jenis">
 </div> 
 <div class="form-group"> 
 <label for="password">Ubah Password</label>
         <input type="password" name="password"  class="form-control" id="password" placeholder="Ubah Password">
 </div> 
               <div class="form-row justify-content-center">
           <div class="form-group col-md-6">
          <input type="submit" value ="Update" class="btn btn-primary">
        </div>
        <div class="form-group col-md-6">
            <a href="index.jsp?folder=home&file=tbl_user.jsp" class="btn btn-info">
               Lihat Data
            </a>
      </div>
           </div>
   </div>
 </form>
        </div>


       </div>
   </div>
            </div>
    </div>
 
   <script>
        $("#password").on("focusout", function () {
  if ($(this).val() != $("#password2").val()) {
    $("#password2").removeClass("valid-feedback").addClass("invalid-feedback");
  } else {
    $("#password2").removeClass("invalid-feedback").addClass("valid-feedback");
  }
});

$("#password2").on("keyup", function () {
  if ($("#password").val() != $(this).val()) {
    $(this).removeClass("valid-feedback").addClass("invalid-feedback");
  } else {
    $(this).removeClass("invalid-feedback").addClass("valid-");
  }
});
    </script>
 

 
    </body>
</html>
