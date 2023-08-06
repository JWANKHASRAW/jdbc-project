package com.cydeo.jdbctests.day2;

import com.cydeo.jdbctests.utility.DB_Util;
import jdk.swing.interop.SwingInterOpUtils;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P02_DBUtilPractice {

    @Test
    public void Task1(){

        //create a connection
      DB_Util.createConnection();

      DB_Util.runQuery("select first_name, last_name, salary from employees");

        //get.result
        System.out.println("=====GET ME FIRST ROW FIRST COLUMN======");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        System.out.println("=====GET ME ALL COLUMN NAMES======");
        System.out.println(DB_Util.getAllColumnNamesAsList());

        System.out.println("=====GET ME ALL FIRST NAMES======");
        System.out.println(DB_Util.getColumnDataAsList(1));

        System.out.println("=====GET ME HOW MANY ROWS WE HAVE======");
        System.out.println(DB_Util.getRowCount());

        System.out.println("=====GET ME CERTAIN ROW INFO======");
        System.out.println(DB_Util.getRowMap(100));

        System.out.println("=====GET ME ROW DATA AS LIST======");
        System.out.println(DB_Util.getRowDataAsList(20));

        System.out.println("=====GET ALL DATA AS A LIST OF MAP======");
        List<Map<String, String>> allRowAsListOfMap =DB_Util.getAllRowAsListOfMap();

        for(Map<String,String> rowMap: allRowAsListOfMap){
            System.out.println(rowMap);


        }






        //close the connection
        DB_Util.destroy();

    }

}
