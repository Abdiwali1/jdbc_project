package com.cydeo.jdbc.live_session_jdbc;

import com.cydeo.jdbc.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.awt.*;
import java.util.List;
import java.util.Map;

public class P02DBUtilTests {

    @Test
    public void practice02(){

        DB_Util.createConnection();
        DB_Util.runQuery("SELECT COUNTRY_ID,COUNTRY_NAME FROM COUNTRIES");

//    System.out.println("GET ME ROW COUNT ");
        int rowCount= DB_Util.getRowCount();
        System.out.println("rowCount = " + rowCount);
//
//    System.out.println("GET ME COLUMN COUNT ");
        System.out.println(DB_Util.getColumnCount());
//
//    System.out.println("GET ALL COLUMN NAME AS LIST");
        System.out.println(DB_Util.getAllColumnNamesAsList());
//
//    System.out.println("GET ROW DATA AS LIST--> FIRST ROW --> 1 ");
        System.out.println(DB_Util.getRowDataAsList(1));
//
//    System.out.println("GET CELL VALUE --> int rowNum , int columnIndex");
        System.out.println(DB_Util.getCellValue(4, 2));
//
//    System.out.println("GET CELL VALUE --> int rowNum ,String columnName");
        System.out.println(DB_Util.getCellValue(11, "COUNTRY_NAME"));
//
//    System.out.println("GET FIRST ROW FIRST COLUMN VALUE");
        System.out.println(DB_Util.getFirstRowFirstColumn());
//
//    System.out.println("GET COLUMN DATA AS LIST--> int columnNum");
        System.out.println(DB_Util.getColumnDataAsList(2));
//
//    System.out.println("GET COLUMN DATA AS LIST--> String columnName");
        System.out.println(DB_Util.getColumnDataAsList("COUNTRY_NAME"));
//
//    System.out.println("GET ROW MAP");
        System.out.println(DB_Util.getRowMap(2));
//
//    System.out.println("GET ALL ROW AS LIST OF MAP");
        System.out.println("------------------------------------");
        List<Map<String, String>> allRowList = DB_Util.getAllRowAsListOfMap();
        for (Map<String, String> eachRow : allRowList) {
            System.out.println(eachRow);
        }






    }
}
