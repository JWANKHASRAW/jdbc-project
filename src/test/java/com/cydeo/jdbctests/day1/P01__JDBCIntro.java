package com.cydeo.jdbctests.day1;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01__JDBCIntro {


        String dbUrl="jdbc:oracle:thin:@44.204.161.27:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

        @Test
    public void task1() throws SQLException {

            Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
            Statement statement = conn.createStatement();
            ResultSet rs= statement.executeQuery("select * from departments where Manager_ID is not null");

            // print a statement in this format: 10-Administration-200-1700

                while(rs.next()){
                        System.out.println(rs.getString(1)+"-"+rs.getString(2)+"-"+rs.getString(3)+"-"+rs.getString(4));
                }

                //Can we run another query? answer is Yes

                rs= statement.executeQuery("select * from LOCATIONS");
                //print the street and city for each row

                System.out.println("..................................................");
                while (rs.next()){

                        System.out.println(rs.getString(2)+ " - " + rs.getString(4));
                }



            rs.close();
            statement.close();
            conn.close();



        }


}
