<%-- 
    Document   : edit_tbl_jenis
    Created on : Dec 24, 2020, 10:12:27 AM
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
    
 String id = request.getParameter("id_jenis");
 finputjenis u = login.getRecordByIdjenis(id);

 %>
        
<div class=
 "container-fluid">
     <div class="row justify-content-center">
    <div class="col-xl-8 col-lg-7">
        <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Update Data Barang</h6>
                        </div>
                        <div class="card-body">
<form action="index.jsp?folder=home&file=prosesupdatejenis.jsp" method="post">
    
 <div class="form-group">
        <label for="exampleFormControlInput1">ID Jenis</label>
        <input type="text" name="id_jenis" value="<%=u.getId_jenis()%>" class="form-control" id="exampleFormControlInput1" readonly="readonly">
        </div>
    
 <div class="form-group"> 
 <label for="exampleFormControlInput2">Jenis</label>
         <input type="text" name="jenis" value="<%=u.getJenis()%>" class="form-control" id="exampleFormControlInput2" placeholder="Jenis">
 </div>       
               <div class="form-row justify-content-center">
           <div class="form-group col-md-6">
          <input type="submit" value ="Update" class="btn btn-primary">
        </div>
        <div class="form-group col-md-6">
            <a href="index.jsp?folder=home&file=tbl_jenis.jsp" class="btn btn-info">
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
    </body>
</html>
