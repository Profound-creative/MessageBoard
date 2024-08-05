package JDBC;

import java.sql.*;
public class JDBC {
  public static void main(String args[]) {
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");     //加载MYSQL JDBC驱动程序   
      //Class.forName("org.gjt.mm.mysql.Driver");
     System.out.println("Success loading Mysql Driver!");
    }
    catch (Exception e) {
      System.out.print("Error loading Mysql Driver!");
      e.printStackTrace();
    }
    
    
    try {
      Connection connect = DriverManager.getConnection(
    		  "jdbc:mysql://localhost:3306/messageboard?serverTimezone=CTT&useUnicode=true&characterEncoding=utf-8&useSSL=false","root","123456");
           //连接URL为   jdbc:mysql//服务器地址/数据库名  ，后面的2个参数分别是登陆用户名和密码
      
      System.out.println("Success connect Mysql server!");
      Statement stmt = connect.createStatement();
      ResultSet rs = stmt.executeQuery("select * from user");
                                                              //user 为你表的名称
      while (rs.next()) {
    	  System.out.print(rs.getString(1));
    	  System.out.print(rs.getString(2));
    	  System.out.println(rs.getString(3));
      }
    }
    catch (Exception e) {
      System.out.print("get data error!");
      e.printStackTrace();
    }
  }
}
