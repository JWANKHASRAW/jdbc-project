package com.cydeo.jdbctests.liveclass;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCPractice {

    String dbURL="jdbc:oracle:thin:@44.204.161.27:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";


    @Test
    public void test1() throws SQLException {



        /*
        How to initiative variable?
        --> WIN --> alt + enter
        --> MAC --. ALT+ENTER

         */

        //Driver manager will help us ot create connection

       Connection conn= DriverManager.getConnection(dbURL,dbUsername,dbPassword);
        Statement stmnt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = stmnt.executeQuery("select country_id, country_name from countries");

        System.out.println("-----------------FIRST ROW---------------");
        rs.next();
        System.out.println(rs.getString(1)+" - "+rs.getString(1));

        System.out.println("-----------------SECOND ROW---------------");
        rs.next();
        System.out.println(rs.getString(2)+" - "+rs.getString(2));

        System.out.println("-----------------TENTH ROW---------------");
        rs.absolute(10);
        System.out.println(rs.getString(1)+" - "+rs.getString(2));

        System.out.println("-----------------HOW MANY ROW WE HAVE---------------");
        rs.last();
        int rowCount = rs.getRow();
        System.out.println(rowCount);

        System.out.println("-----------------GET PREVIOUS ROW---------------");
        rs.previous();
        System.out.println(rs.getString(1)+ " - " +rs.getString(1));


        System.out.println("---------------GET ME ROW 12--------------------");
        rs.absolute(12);
        System.out.println(rs.getString(1)+" - "+rs.getString(2));



        System.out.println("---------PRINT ALL DATA DYNAMICALLY----------");
        rs.beforeFirst();
        while (rs.next()) {

            System.out.println(rs.getString(1) + " - " + rs.getString(2));

        }



        System.out.println("-------------HOW MANY COLUMN WE HAVE----------");
        rs.beforeFirst();
        ResultSetMetaData rsmd = rs.getMetaData();
        int columnCount = rsmd.getColumnCount();
             System.out.println("columnCount = " + columnCount);




        System.out.println("----HOW TO PRINT ALL COLUMN NAMES------");
        rs.beforeFirst();
       while (rs.next()){
           for (int i = 1; i <=columnCount ; i++) {
               System.out.println(rsmd.getColumnName(i));
           }
       }

             System.out.println("----------PRINT COUNTRY NAME AND COUNTRY ID-----------");
             

             while (rs.next()){
                 for (int i = 1; i <=columnCount ; i++) {
                     System.out.println(rsmd.getColumnName(i)+" - "+rs.getString(i));
                 }

             }



        rs.close();
        stmnt.close();
        conn.close();

    }



    }

