package com.mis.dao;

import java.io.PrintStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection
{
  private static String userName = "root";
  private static String passWord = "qwerty!@#$%TTH";
  private static String url = "jdbc:mysql://103.7.64.19:3306/misDemo";
  private static String driverClassName = "com.mysql.jdbc.Driver";

  public static Connection getConnection()
  {
    Connection conn = null;
    try
    {
      Class.forName(driverClassName);
      conn = DriverManager.getConnection(url, userName, passWord);
      if (conn == null) {
        System.out.println("Could Not Connected To DataBase"); 
      }
//      System.out.println("Connected Successfully");
    }
    catch (ClassNotFoundException e) {
      e.printStackTrace();
    } catch (SQLException e) {
      e.printStackTrace();
    }
     return conn;
  }
}