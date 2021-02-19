<%-- 
    Document   : tambah_jenis
    Created on : Dec 22, 2020, 2:18:57 PM
    Author     : Ruli gandari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <div class="container-fluid">
            <h1 class="h4 mb-2 text-gray-800">Tambah Jenis Barang</h1>
             <div class="row justify-content-center">
            <div class="col-xl-8 col-lg-7">
                <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Tambah Jenis Barang</h6>
                                </div>
                                <div class="card-body">
                                   
<form action="index.jsp?folder=home&file=prosesinputjenis.jsp" method="post" class="needs-validation" novalidate>
  <div class="form-group">
    <label for="uname">ID Jenis</label>
    <input type="text" class="form-control" id="uname" placeholder="ID Jenis" name="id_jenis" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">ID Jenis harus di isi</div>
  </div>
  <div class="form-group">
    <label for="pwd">Nama Jenis Barang</label>
    <input type="text" class="form-control" id="pwd" placeholder="Nama Jenis Barang" name="jenis" required>
    <div class="valid-feedback">Valid.</div>
    <div class="invalid-feedback">Jenis harus di isi</div>
  </div>
  <button type="submit" class="btn btn-primary">Tambah Data</button>
  <a href="index.jsp?folder=home&file=tbl_jenis.jsp" class="btn btn-info">
     Lihat Data
  </a>
</form>                                    
                                    

                                 </div>
       
                               
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
