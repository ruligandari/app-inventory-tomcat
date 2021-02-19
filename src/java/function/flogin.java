/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package function;
/**
 *
 * @author ruligandari
 */
public class flogin {
    private String  nama, username, password;
    private int id_user;
    public int getId_user(){
        return id_user;
    }
    public void setId_user(int id_user){
        this.id_user = id_user;
    }
    public String getNama (){
        return nama;
    }
    public void setNama (String nama){
        this.nama = nama;
    }
    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username = username;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
}
