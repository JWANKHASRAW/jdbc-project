package com.cydeo.jdbctests.day2;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class P01_ListOfMaps {


    String dbUrl = "jdbc:oracle:thin:@44.204.161.27:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

        @Test
        public void task1(){


            System.out.println("---------------First Row-----------------------");
            Map<String, Object> rowMap1= new LinkedHashMap<>();
            rowMap1.put("First_Name", "Steven");
            rowMap1.put("Last_Name", "King");
            rowMap1.put("Salary", 24000);

            System.out.println(rowMap1);

            System.out.println("---------------Second Row-----------------------");
            Map<String, Object> rowMap2= new LinkedHashMap<>();
            rowMap2.put("First_Name", "Neena");
            rowMap2.put("Last_Name", "Kochhar");
            rowMap2.put("Salary", 17000);

            System.out.println(rowMap2);

            //we can put these maps in a List of arrayList

            List<Map<String, Object>> dataList = new ArrayList<>();
            dataList.add(rowMap1);
            dataList.add(rowMap2);

            System.out.println(dataList);
            System.out.println(dataList.get(0).get("Salary")); // To print the salary of steven king

        }

        @Test
        public void Task2() throws SQLException {

            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME, SALARY from employees where rowNum <6");

            ResultSetMetaData rsmd = rs.getMetaData(); // To get the column names and counts
            rs.next();// we need to move to the first row to fill rowMap1


            System.out.println("---------------First Row-----------------------");
            Map<String, Object> rowMap1= new LinkedHashMap<>();
            rowMap1.put(rsmd.getColumnName(1), rs.getString(1));
            rowMap1.put(rsmd.getColumnName(2), rs.getString(2));
            rowMap1.put(rsmd.getColumnName(3), rs.getInt(3));

            System.out.println(rowMap1);

            rs.next();// move the pointer one more to next row
            System.out.println("---------------Second Row-----------------------");
            Map<String, Object> rowMap2= new LinkedHashMap<>();
            rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
            rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
            rowMap2.put(rsmd.getColumnName(3), rs.getInt(3));

            System.out.println(rowMap2);

            //we can put these maps in a List of arrayList

            List<Map<String, Object>> dataList = new ArrayList<>();
            dataList.add(rowMap1);
            dataList.add(rowMap2);

            System.out.println(dataList);
            System.out.println(dataList.get(0).get("Salary")); // To print the salary of steven king




            rs.close();
            statement.close();
            conn.close();


    }


        @Test //make ot dynamic
    public void Task3() throws SQLException {

            Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("select  FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where rowNum <4");

            ResultSetMetaData rsmd = rs.getMetaData();

            List<Map<String, Object>> dataList = new ArrayList<>();
            int columnCount=rsmd.getColumnCount();

            while (rs.next()) {
                // Create your list of maps to keep one row of information
                Map<String, Object> rowMap = new LinkedHashMap<>();

                //Iterate through each column dynamically to fill in the map
                for (int i = 1; i <=columnCount ; i++) {
                    //key = column name, value= column value
                    rowMap.put(rsmd.getColumnName(i),rs.getString(i));

                }

                //add the one row info to the list
                dataList.add(rowMap);
            }

            for (Map<String, Object> row: dataList) {
                System.out.println(row);
            }







            rs.close();
            statement.close();
            conn.close();

        }




}
