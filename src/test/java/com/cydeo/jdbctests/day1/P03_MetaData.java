package com.cydeo.jdbctests.day1;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.Map;

public class P03_MetaData {

    //CONNECTION STRING
    String dbUrl = "jdbc:oracle:thin:@44.204.161.27:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");

        //DatabaseMetaData --> it comes from connection object
        DatabaseMetaData dbMetaData = conn.getMetaData();
        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDriverName());

        System.out.println("-----------------ResultSetMetaData------------------------");

        //ResultSetMetaData --> it comes from resultSet object
        ResultSetMetaData rsmd = rs.getMetaData();

        //How many columns do we have
        int columnCount=rsmd.getColumnCount();
        System.out.println(columnCount);

        //get column name for index 2
        System.out.println(rsmd.getColumnName(2));

        System.out.println(".....................................");

        //Print all column names dynamically
        for (int i = 1; i <= columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
        }

        System.out.println(".........PRINT ALL DATA DYNAMICALLY..............");

        /*
        write a code that prints whole table information for every query.
        Column Name - Column value
        Employee_Id - 100
        First_Name - Steven

        SLUTION:
        1. iterate through each row
        whatever we do, we will do for each row
        REGION_ID - 1 REGION NAME - EUROPE --> THE OUTCOME

        iterate each column
       System.out.println(rsmd.getColumnName(1)+"-"+rs.getString(1));

         */

        while (rs.next()){

            for (int i = 1; i <= columnCount ; i++) {
                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+" ");
            }

            System.out.println(" ");
        }










        rs.close();
        statement.close();
        conn.close();



    }
}
