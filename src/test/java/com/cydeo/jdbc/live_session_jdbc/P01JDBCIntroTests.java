package com.cydeo.jdbc.live_session_jdbc;

import org.junit.jupiter.api.Test;

import java.sql.*;



public class P01JDBCIntroTests {
    
    //Connection Strings
    String dbURL ="jdbc:oracle:thin:@54.225.26.215:1521:xe";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void practice01() throws SQLException {

        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
        Statement stmnt = conn.createStatement();
        ResultSet rs = stmnt.executeQuery("SELECT COUNTRY_ID,COUNTRY_NAME FROM COUNTRIES");

        System.out.println("-----------First Row----------");

        //go to first row
        rs.next();
        //get me first row first column data
        System.out.println(rs.getString(1));
        //get me first row second column data
        System.out.println(rs.getString(2));

        //organized like database
        String countryID=rs.getString(1);
        String countryName=rs.getString(2);
        System.out.println(countryID+ " - "+countryName);

    }
}
