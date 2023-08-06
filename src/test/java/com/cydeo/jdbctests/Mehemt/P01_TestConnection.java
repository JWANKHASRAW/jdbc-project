package com.cydeo.jdbctests.Mehemt;

import java.sql.*;

public class P01_TestConnection {
    public static void main(String[] args) throws SQLException {

    //Connection String
        String dbUrl= "jdbc:oracle:thin:@44.204.161.27:1521:XE";
        String dbPassword="hr";
        String dbUsername="hr";

    //DriverManager class will help us to create connection between java and db
        Connection conn = DriverManager.getConnection(dbUrl, dbPassword, dbUsername);

    //createStatement method will create statement to execute queries
    Statement stmnt= conn.createStatement();

    // We are gonna store all information in resultSet
        ResultSet rs = stmnt.executeQuery("select COUNTRY_ID, COUNTRY_NAME from countries");

    // Retrieve Data
    // As a default it shows beforeFirst() column
    // Use next() method to jump in first row

        /*
        rs.next();// ture if the new current row is valid, false if there are no more rows
                 // this method will start reading the first column

                //print country_if from first column
        System.out.println("rs.getString(1) = " + rs.getString(1)); //--> will give first cell in first column (AR)
        System.out.println("rs.getString(\"country_id\") = " + rs.getString("country_id"));//--> we could use the getString(columnlabel) to use the title of the column (country_id)
        System.out.println("rs.getString(2) = " + rs.getString(2));
        System.out.println("rs.getString(\"country_name\") = " + rs.getString("country_name"));

        rs.next();//--> moving to the next row
        //print country_id and country_name in the following format
        // country_id - country_name
        // AR - Argentina

        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        */

        // what if we have 1000 row?

       while(rs.next()){
           System.out.println(rs.getString(1)+ " - "+ rs.getString(2));
       }



        //close all connection in reverse
    rs.close();
    stmnt.close();
    conn.close();


    }
}
