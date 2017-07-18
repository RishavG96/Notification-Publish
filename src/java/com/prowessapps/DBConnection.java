/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prowessapps;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author mahe
 */
public class DBConnection {
    public static Connection con;
    public static Connection getDbConnection()
    {
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stp17july","root","password");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return con;
    }
}
