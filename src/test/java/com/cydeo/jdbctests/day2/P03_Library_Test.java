package com.cydeo.jdbctests.day2;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_Library_Test {

    //CREATE CONNECTION
    String url="jdbc:mysql://34.230.35.214:3306/library2";
    String username="library2_client";
    String password="6s2LQQTjBcGFfDhY";

    @Test
    public void Task1() throws SQLException {

        //create connection
        DB_Util.createConnection(url,username,password);

        //run query
        DB_Util.runQuery("select count(*) from books");
        String bookCount = DB_Util.getFirstRowFirstColumn();
        System.out.println(bookCount);


        //close connection
        DB_Util.destroy();
    }

















}
