/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.db;

import java.sql.*;

/**
 *
 * @author VENKAT
 */
public class JDBCConnection {
    public static Connection con=null;
    public static int i=0;
    public static ResultSet rs;
    public static Connection getCon(){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/corruption","root","root");
    
         
}catch(Exception e){
System.out.println(e);
}
        return con;
    }
    public static int getUpdateQuery(String query){
        try{
    Connection con=getCon();
    Statement st=con.createStatement();
    i=st.executeUpdate(query);
   
        }catch(Exception e){
         System.out.println(e);
        }
        return i;
    }
     public static ResultSet getExecuteQuery(String query){
        try{
    Connection con=getCon();
    Statement st=con.createStatement();
    rs=st.executeQuery(query);
   
        }catch(Exception e){
         System.out.println(e);
        }
        return rs;
    }
}

