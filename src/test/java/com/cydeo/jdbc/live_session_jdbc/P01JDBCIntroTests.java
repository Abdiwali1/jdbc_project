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
        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
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

        System.out.println("------Second Row---------");
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        System.out.println(rs.getString("COUNTRY_ID") + " - " + rs.getString("COUNTRY_NAME"));

        System.out.println("------10th Row---------");
        rs.absolute(10);
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        System.out.println("----- HOW MANY ROW  WE HAVE ----");
        int currentRow = rs.getRow();
        System.out.println("currentRow = " + currentRow);

        System.out.println("----- WHAT IS THE LAST ROW ----");
        rs.last();
        int rowCount= rs.getRow();
        System.out.println("rowCount = " + rowCount);

        System.out.println("----- GET ME PREVIOUS ROW ----");
        rs.previous();
        System.out.println(rs.getString(1)+" - "+rs.getString(2));

        System.out.println("----- GET ME ALL DATA DYNAMICALLY  ----");
        rs.beforeFirst();

        while (rs.next()){
            System.out.println(rs.getString(1)+" - "+rs.getString(2));
        }

        System.out.println("----- HOW MANY COLUMN WE HAVE   ----");
        ResultSetMetaData rsmd = rs.getMetaData();
        int columnCount = rsmd.getColumnCount();
        System.out.println("columnCount = " + columnCount);

        System.out.println("----- GET ME FIRST COLUMN NAME   ----");
        String firstColumn = rsmd.getColumnName(1);
        System.out.println("firstColumn = " + firstColumn);

        System.out.println("----- GET ME SECOND COLUMN NAME   ----");
        String secondColumn = rsmd.getColumnName(2);
        System.out.println("secondColumn = " + secondColumn);

        System.out.println("----- GET ME ALL COLUMN NAMES    ----");
        for (int i=1; i<= columnCount; i++){
            System.out.println(rsmd.getColumnName(i));
        }

        System.out.println("-----GET ME ALL DATA WITH COLUMN NAMES DYNAMICALLY----");
        // COUNTRY_ID - AR COUNTRY_NAME - ARGENTINA
        // COUNTRY_ID - AU COUNTRY_NAME - AUSTRALIA
        // COUNTRY_ID - BE COUNTRY_NAME - BELGIUM
        // COUNTRY_ID - BR COUNTRY_NAME - BRAZIL
        // ....
        // ...

        rs.beforeFirst();
        while (rs.next()){

            for (int i=1; i<= columnCount; i++){
                System.out.print(rsmd.getColumnName(i)+" - "+ rs.getString(i)+ " ");
            }
            System.out.println();
        }
        rs.close();
        stmnt.close();
        conn.close();
         }
}
