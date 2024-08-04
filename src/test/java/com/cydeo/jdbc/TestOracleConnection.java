package com.cydeo.jdbc;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {
        //Connection Strings
        String dbUrl = "jdbc:oracle:thin:@54.225.26.215:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        //Create Connection
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        System.out.println("Connection is created successfully");

        Statement statement = conn.createStatement();
        System.out.println("Statement is created successfully");

        ResultSet rs = statement.executeQuery("SELECT * FROM DEPARTMENTS");
        System.out.println("Query executed and data are stored in rs");

        System.out.println("------------------------------------------------------");

        while(rs.next()){

            System.out.println(rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3)+" - "+rs.getString(4));

        }


        rs.close();
        statement.close();
        conn.close();
        System.out.println("rs,statement and conn are closed");

    }
}
