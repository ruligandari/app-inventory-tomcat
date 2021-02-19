<%-- 
    Document   : tambah_barang
    Created on : Dec 22, 2020, 1:10:31 PM
    Author     : Ruli gandari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"
    </head>
    <body>
        
<%@page import="function.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%
 List<finputjenis> list = login.getAllRecordsjenis();
 request.setAttribute("list", list);
 %>
        
<%
   String key = UUID.randomUUID().toString();
   String kd_barang ="";
%>
        <div class="container-fluid">
            <h1 class="h4 mb-2 text-gray-800">Tambah Barang</h1>
             <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-7">
                <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Tambah Data Barang</h6>
                                </div>
                                <div class="card-body">

                                    
<form action="index.jsp?folder=home&file=prosesinputbarang.jsp" method="post" class="needs-validation" novalidate>
  <div class="form-group">
    <label for="transaksi">ID Transaksi</label>
    <input type="text" value="WG-<%=key%>" readonly="readonly" class="form-control" id="transaksi" placeholder="ID Transaksi" name="id_transaksi" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">ID Transaksi harus di isi.</div>
  </div>
  <div class="form-group">
    <label for="barang">Kode Barang</label>
    <input type="text" class="form-control" id="barang" placeholder="Kode Barang" name="kd_barang" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Kode Barang harus di isi</div>
  </div>
<div class="form-group">
    <label for="nama">Nama Barang</label>
    <input type="text" class="form-control" id="nama" placeholder="Nama Barang" name="nama_barang" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Nama Barang di isi</div>
  </div>
<div class="form-group">
    <label for="tanggal">Tanggal Masuk</label>
    <input type="date" class="form-control" id="tanggal" placeholder="Tanggal Masuk" name="tanggal" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Tanggal Masuk harus di isi</div>
  </div>
    <div class="form-row">
<div class="form-group col-md-6">
    <label for="jumlah">Jumlah</label>
    <input type="text" class="form-control" id="jumlah" placeholder="Jumlah" name="jumlah" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Jumlah harus di isi</div>
  </div>
    <div class="form-group col-md-6">
<label for="inputState">Jenis</label>
<select name="jenis" id="inputState" class="form-control" required="">
    <c:forEach items="${list}" var="u">
  <option>${u.getJenis()}</option>
  </c:forEach>
</select>
</div>
<div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Jenis harus di isi</div>
</div>
  <button type="submit" class="btn btn-primary">Tambah Data</button>
  <a href="index.jsp?folder=home&file=tbl_brg_masuk.jsp" class="btn btn-info">
     Lihat Data
  </a>
</form>       

</div>


</div>
</div>
</div>
</div>
   <script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
    </body>
</html>
