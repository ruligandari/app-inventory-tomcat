<%-- 
    Document   : edit_tbl_masuk
    Created on : Dec 23, 2020, 10:46:53 AM
    Author     : Ruli gandari
--%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Edit Form</title>
 </head>
 <body>
 <%@page import="function.*"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%
 String id = request.getParameter("id_transaksi");
 finputbarang u = login.getRecordByIdbarang(id);
 List<finputjenis> list = login.getAllRecordsjenis();
 request.setAttribute("list", list);
 %>
        
<div class="container-fluid">
     <div class="row justify-content-center">
    <div class="col-xl-8 col-lg-7">
        <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Update Data Barang</h6>
                        </div>
                        <div class="card-body">
<form action="index.jsp?folder=home&file=prosesupdatebarang.jsp" method="post">
    
 <div class="form-group">
        <label for="exampleFormControlInput1">ID Transaksi</label>
        <input type="text" name="id_transaksi" value="<%=u.getId_transaksi()%>" class="form-control" id="exampleFormControlInput1" readonly="readonly">
        <br>
         <label for="exampleFormControlInput2">Kode Barang</label>
         <input type="text" name="kd_barang" value="<%=u.getKd_barang()%>" class="form-control" id="exampleFormControlInput2" readonly="readonly" placeholder="Kode Barang">
        <br>
         <label for="exampleFormControlInput3">Nama Barang</label>
        <input type="text" name="nama_barang" value="<%= u.getNama_barang()%>" class="form-control" id="exampleFormControlInput3" placeholder="Nama Barang">
        <br>
         <label for="exampleFormControlInput3">Tanggal Masuk</label>
        <input type="date" name="tanggal" value="<%= u.getTanggal()%>" class="form-control" data-date-format="dd/mm/yy" id="exampleFormControlInput3" placeholder="Tanggal Masuk">
      </div>
      <div class="form-row">
           <div class="form-group col-md-6">
          <label for="inputEmail4">Jumlah</label>
          <input type="text" name="jumlah" value="<%= u.getJumlah()%>" class="form-control" id="inputEmail4" placeholder="Jumlah">
        </div>
        <div class="form-group col-md-6">
          <label for="inputState">Jenis</label>
          <select name="jenis" value="<%= u.getJenis()%>"id="inputState" class="form-control">
              <c:forEach items="${list}" var="u">
            <option>${u.getJenis()}</option>
            </c:forEach>
          </select>
      </div>
      </div>
               <div class="form-row justify-content-center">
           <div class="form-group col-md-6">
          <input type="submit" value ="Update" class="btn btn-primary">
        </div>
        <div class="form-group col-md-6">
            <a href="index.jsp?folder=home&file=tbl_brg_masuk.jsp" class="btn btn-info">
               Lihat Data
            </a>
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
