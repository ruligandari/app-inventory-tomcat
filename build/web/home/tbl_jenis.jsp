<%-- 
    Document   : tbl_jenis
    Created on : Dec 22, 2020, 9:24:26 PM
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
        <%@page import="function.*, java.util.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%
 List<finputjenis> list = login.getAllRecordsjenis();
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
                            <h6 class="m-0 font-weight-bold text-primary">Tabel Jenis Barang</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID Jenis</th>
                                            <th>Jenis Barang</th>
                                             <th>Edit</th>
                                              <th>Hapus</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                         
                                        <tr>
                                            <th>ID Jenis</th>
                                            <th>Jenis Barang</th>
                                             <th>Edit</th>
                                              <th>Hapus</th>
                                        </tr>
                                        
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${list}" var="u">
                                        <tr>
                                            <td>${u.getId_jenis()}</td>
                                            <td>${u.getJenis()}</td>
                                            <td>
    <a  class="btn btn-success btn-sm" href="index.jsp?folder=home&file=edit_tbl_jenis.jsp&id_jenis=${u.getId_jenis()}" onClick="return confirm('Apakah Anda Yakin Ingin Mengupdate Data Ini?')">Edit</a>
</td>
<td>
    <a class="btn btn-danger btn-sm" href="index.jsp?folder=home&file=prosesdeletejenis.jsp&id_jenis=${u.getId_jenis()}" onClick="return confirm('Apakah Anda Yakin Ingin Menghapus Data Ini?')">Delete</a>
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


    </body>
</html>
