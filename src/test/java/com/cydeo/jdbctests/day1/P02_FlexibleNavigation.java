package com.cydeo.jdbctests.day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {

    String dbUrl = "jdbc:oracle:thin:@44.204.161.27:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY );
        ResultSet rs = statement.executeQuery("select first_name, last_name from employees");

        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        /*
        We add these two settings from ResultSet so we can use the other methods
         ResultSet.TYPE_SCROLL_SENSITIVE --> to do flexible navigation between rows
         ResultSet.CONCUR_READ_ONLY --> do not update anything from database, only read
         */



        System.out.println("-----------------LAST METHOD------------------------------");
        // what if I want to get the last data


        rs.last();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        //how many rows we have? to get to the answer we have (last + getRow)

        int rowNumber = rs.getRow(); // It will give you the current row that we at. tThe current row number; 0 if there is no current row
        System.out.println("rowNumber: " + rowNumber);

        System.out.println("-----------------ABSOLUTE------------------------------");

        //to jump to a specific row (e.g.46)
        rs.absolute(46); // true if the cursor is moved to a position in this ResultSet object; false if the cursor is before the first row or after the last row
        System.out.println(rs.getString(1)+" "+rs.getString(2));//Alexander Hunold

        System.out.println("-----------------PREVIOUSE------------------------------");

        rs.previous();// will move one row back
        System.out.println(rs.getString(1)+" "+rs.getString(2)); //Guy Himuro

        System.out.println("..............................................................");

        // Print the whole table
        //rs = statement.executeQuery("select * from employees");

        System.out.println("-------------PRINT THE WHOLE REPORT-------------------");
        rs.first();// if we use this method the loop will start from the second row

        rs.beforeFirst(); //jump into before first row, It is like resetting the pointer back to default position so we can use while loop
        while(rs.next()){

            System.out.println(rs.getString(1)+" "+rs.getString(2));
        }


        rs.close();
        statement.close();
        conn.close();
    }
}