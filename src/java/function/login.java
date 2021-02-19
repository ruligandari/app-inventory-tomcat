/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package function;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author ruligandari
 */
public class login {
  public static boolean validate(flogin gt){
 boolean status=false;
 try{
 Connection con=koneksi.getKoneksi();
 PreparedStatement ps=con.prepareStatement("SELECT * FROM `tbl_user` WHERE username = ? and password = ?");
 ps.setString(1, gt.getUsername());
 ps.setString(2, gt.getPassword());
 
 ResultSet rs=ps.executeQuery();
 status=rs.next();

 System.out.println(gt.getPassword());
 } catch(Exception e){ System.out.println(e); }
 return status;
 
 }
   public static int savebarang(finputbarang gtb) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("insert into `tbl_barang`(kd_barang,id_transaksi,tanggal,nama_barang,jenis,jumlah) values (?,?,?,?,?,?)");
 ps.setString(1, gtb.getKd_barang());
 ps.setString(2, gtb.getId_transaksi());
 ps.setString(3, gtb.getTanggal());
 ps.setString(4, gtb.getNama_barang());
 ps.setString(5, gtb.getJenis());
 ps.setString(6, gtb.getJumlah());

 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }  
   
    public static int savejenis(finputjenis gtj) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("insert into `tbl_jenis`(id_jenis, jenis) values (?,?)");
 ps.setString(1, gtj.getId_jenis());
 ps.setString(2, gtj.getJenis());

 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }  
 
//    reaaad data barang
public static List<finputbarang> getAllRecordsbarang(){
List<finputbarang> list=new ArrayList<finputbarang>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select * from tbl_barang");
ResultSet rs=ps.executeQuery();
while(rs.next()){
finputbarang u=new finputbarang();
u.setKd_barang(rs.getString("kd_barang"));
u.setId_transaksi(rs.getString("id_transaksi"));
u.setTanggal(rs.getString("tanggal"));
u.setNama_barang(rs.getString("nama_barang"));
u.setJenis(rs.getString("jenis"));
u.setJumlah(rs.getString("jumlah"));
list.add(u);
}
}catch(Exception e){System.out.println(e);}
return list;
}

public static List<finputjenis> getAllRecordsjenis(){
List<finputjenis> list=new ArrayList<finputjenis>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select * from tbl_jenis");
ResultSet rs=ps.executeQuery();
while(rs.next()){
finputjenis u=new finputjenis();
u.setId_jenis(rs.getString("id_jenis"));
u.setJenis(rs.getString("jenis"));
list.add(u);
}
}catch(Exception e){System.out.println(e);}
return list;
}

public static int update(finputbarang u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("update tbl_barang set tanggal=?,nama_barang=?,jenis=?, jumlah=? where id_transaksi=?");
 ps.setString(1, u.getTanggal());
 ps.setString(2, u.getNama_barang());
 ps.setString(3, u.getJenis());
 ps.setString(4, u.getJumlah());
 ps.setString(5, u.getId_transaksi());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }

public static finputbarang getRecordByIdbarang(String id_transaksi) {
 finputbarang u = null;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("select * from tbl_barang where id_transaksi=?");
 ps.setString(1, id_transaksi);
 ResultSet rs = ps.executeQuery();
 while (rs.next()) {
 u = new finputbarang();
 u.setKd_barang(rs.getString("kd_barang"));
 u.setId_transaksi(rs.getString("id_transaksi"));
 u.setTanggal(rs.getString("tanggal"));
 u.setNama_barang(rs.getString("nama_barang"));
 u.setJenis(rs.getString("jenis"));
 u.setJumlah(rs.getString("jumlah"));
 }
 } catch (Exception e) {
 System.out.println(e);
 }
 return u;
 }

public static int delete(finputbarang u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("delete from tbl_barang where id_transaksi=?");
 ps.setString(1, u.getId_transaksi());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 } 

public static finputjenis getRecordByIdjenis(String id_jenis) {
 finputjenis uj = null;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("select * from tbl_jenis where id_jenis=?");
 ps.setString(1, id_jenis);
 ResultSet rs = ps.executeQuery();
 while (rs.next()) {
 uj = new finputjenis();
 uj.setId_jenis(rs.getString("id_jenis"));
 uj.setJenis(rs.getString("jenis"));
 }
 } catch (Exception e) {
 System.out.println(e);
 }
 return uj;
 }

public static int updatejenis(finputjenis u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("update tbl_jenis set  jenis=? where id_jenis=?");
 ps.setString(1, u.getJenis());
 ps.setString(2, u.getId_jenis());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }

public static int deletejenis(finputjenis uj) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("delete from tbl_jenis where id_jenis=?");
 ps.setString(1, uj.getId_jenis());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }

public static List<flogin> getAllRecordsUser(){
List<flogin> list=new ArrayList<flogin>();
try{
Connection con=koneksi.getKoneksi();
PreparedStatement ps=con.prepareStatement("select * from tbl_user");
ResultSet rs=ps.executeQuery();
while(rs.next()){
flogin us =new flogin();
us.setId_user(rs.getInt("id_user"));
us.setNama(rs.getString("nama"));
us.setUsername(rs.getString("username"));
us.setPassword(rs.getString("password"));
list.add(us);
}
}catch(Exception e){System.out.println(e);}
return list;
}

    public static int saveuser(flogin gt) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("insert into `tbl_user`(nama,username, password) values (?,?,?)");
 ps.setString(1, gt.getNama());
 ps.setString(2, gt.getUsername());
 ps.setString(3, gt.getPassword());

 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 } 

public static flogin getRecordByIduser(String id_user) {
 flogin u = null;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("select * from tbl_user where id_user=?");
 ps.setString(1, id_user);
 ResultSet rs = ps.executeQuery();
 while (rs.next()) {
 u = new flogin();
 u.setId_user(rs.getInt("id_user"));
 u.setNama(rs.getString("nama"));
 u.setUsername(rs.getString("username"));
 u.setPassword(rs.getString("password"));

 }
 } catch (Exception e) {
 System.out.println(e);
 }
 return u;
 }    
  
public static int updateuser(flogin u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("update tbl_user set  nama=?,username=?,password=? where id_user=?");
 ps.setString(1, u.getNama());
 ps.setString(2, u.getUsername());
 ps.setString(3, u.getPassword());
 ps.setInt(4, u.getId_user());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }

public static int deleteuser(flogin u) {
 int status = 0;
 try {
 Connection con = koneksi.getKoneksi();
 PreparedStatement ps = con.prepareStatement("delete from tbl_user where id_user=?");
 ps.setInt(1, u.getId_user());
 status = ps.executeUpdate();
 } catch (Exception e) {
 System.out.println(e);
 }
 return status;
 }

}



