<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
        <link>
    </head>
    <body id="page-top">
     <!-- Main Content -->
<%
 try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projekbp3","root","");
Statement st=con.createStatement();
String strQuery = "SELECT SUM(jumlah) FROM tbl_barang";
String stQuery = "SELECT COUNT(*) FROM tbl_barang";
String stuQuery = "SELECT COUNT(*) FROM tbl_user";
String stjQuery = "SELECT COUNT(*) FROM tbl_jenis";

ResultSet rs = st.executeQuery(strQuery);
String Countrun="";
while(rs.next()){
Countrun = rs.getString(1);
}

ResultSet rsc = st.executeQuery(stQuery);
String Countbar ="";
while(rsc.next()){
Countbar = rsc.getString(1);
}

ResultSet rsj = st.executeQuery(stjQuery);
String Countjenis ="";
while(rsj.next()){
Countjenis = rsj.getString(1);
}

ResultSet rsu = st.executeQuery(stuQuery);
String Countuser ="";
while(rsu.next()){
Countuser = rsu.getString(1);
}
%>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-lg font-weight-bold text-primary text-uppercase mb-1">
                                               Item Barang</div>
                                            <div class="h4 mb-0 font-weight-bold text-gray-800"><% out.println(Countbar);%></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-shopping-cart fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-lg font-weight-bold text-success text-uppercase mb-1">
                                                Barang Masuk</div>
                                            <div class="h4 mb-0 font-weight-bold text-gray-800"><% out.println(Countrun);%></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-sign-in-alt fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

    <!-- Pending Requests Card Example -->                                     
    <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-lg font-weight-bold text-danger text-uppercase mb-1">
                                                Jenis Barang</div>
                                            <div class="h4 mb-0 font-weight-bold text-gray-800"><%out.println(Countjenis);%></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-gifts fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>   

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-lg font-weight-bold text-warning text-uppercase mb-1">
                                                Users</div>
                                            <div class="h4 mb-0 font-weight-bold text-gray-800"><%out.println(Countuser);%></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                                           
                                        
                    </div>

                </div>
<%
}
catch (Exception e){
e.printStackTrace();
}
%>
                <!-- /.container-fluid -->
                <!--Tabel-->
<jsp:include page="tbl_brg_masuk.jsp"></jsp:include>
            </div>

    </body>
</html>
