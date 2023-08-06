package com.cydeo.jdbctests.Mehemt;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {

        // Connection String
        String dburl="jdbc:oracle:thin:@44.204.161.27:1521:XE";
        String dbUserName="hr";
        String dbPassword="hr";

        //create connection
        //DriverManager class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dburl, dbUserName, dbPassword);

        //statement is used to execute queries
        Statement statement = conn.createStatement();

        //Resultset will store data after execution, there is no table info
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS");



        /*
        //getting data
        rs.next();
        System.out.println("------------first row---------------");
        //right now pointer is in the first row

        //how to get data from first row?

        System.out.println(rs.getInt(1)); //--> rs.getInt(index) --> this method returns integer. Index start from 1 in SQL. t refers column position

        //get the Europe -region name
        System.out.println(rs.getString(2));

        System.out.println(rs.getInt("REGION_ID"));
        System.out.println(rs.getString("REGION_NAME"));

        System.out.println("------------second row---------------");
        //to get second row result in this format: 2 - Americas
        rs.next();
        System.out.println(rs.getInt(1) +" - "+ rs.getString(2));
        //System.out.println(rs.getInt("region_ID")+ " - "+ rs.getString("REGION_NAME"));

        System.out.println("------------third row---------------");
        rs.next();
        System.out.println(rs.getInt("REGION_ID")+ " - "+ rs.getString("REGION_NAME"));

        System.out.println("------------fourth row---------------");
        rs.next();
        System.out.println(rs.getInt("REGION_ID")+ " - "+ rs.getString("REGION_NAME"));

        */
        while (rs.next()){

            System.out.println(rs.getInt(1)+ " - "+ rs.getString(2)+ " - "+ rs.getString(3));

        }





        rs.close();
        statement.close();
        conn.close();
    }





}
