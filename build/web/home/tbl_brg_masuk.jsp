<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
 <title>Admin - Tabel Masuk</title>
</head>

<body id="page-top">
<%@page import="function.*, java.util.*"%>
<%@page import="function.finputbarang"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%
 List<finputbarang> list = login.getAllRecordsbarang();
 request.setAttribute("list", list);
 
 %>
    <!-- Page Wrapper -->
    <div id="wrapper">
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h4 mb-2 text-gray-800">Tables</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Tabel Barang Masuk</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Kode Barang</th>
                                            <th>ID Transaksi</th>
                                            <th>Tanggal</th>
                                            <th>Nama Barang</th>
                                            <th>Jenis Barang</th>
                                            <th>Jumlah</th>
                                             <th>Edit</th>
                                              <th>Hapus</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Kode Barang</th>
                                            <th>ID Transaksi</th>    
                                            <th>Tanggal</th>
                                            <th>Nama Barang</th>
                                            <th>Jenis Barang</th>
                                            <th>Jumlah</th>
                                             <th>Edit</th>
                                              <th>Hapus</th>
                                        </tr>
                                        
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${list}" var="u">
                                        <tr>
                                            <td>${u.getKd_barang()}</td>
                                            <td>${u.getId_transaksi()}</td>
                                            <td>${u.getTanggal()}</td>
                                            <td>${u.getNama_barang()}</td>
                                            <td>${u.getJenis()}</td>
                                            <td>${u.getJumlah()}</td>
                                            <td>
                                               
<a class="btn btn-success btn-sm" href="index.jsp?folder=home&file=edit_tbl_masuk.jsp&id_transaksi=${u.getId_transaksi()}" onClick="return confirm('Apakah Anda Yakin Ingin Mengupdate Data Ini?')">Update</a?
</td>
<td>
    <a class="btn btn-danger btn-sm" href="index.jsp?folder=home&file=prosesdeletebarang.jsp&id_transaksi=${u.getId_transaksi()}" onClick="return confirm('Apakah Anda Yakin Ingin Menghapus Data Ini?')">Delete</a>
</td>

                                        </tr>
                                         </c:forEach>
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Modal Edit Tabell-->

</body>

</html>