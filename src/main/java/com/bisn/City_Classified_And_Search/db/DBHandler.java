package com.bisn.City_Classified_And_Search.db;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import org.springframework.stereotype.Component;

import com.mysql.jdbc.Connection;

@Component
public class DBHandler {
	
	private static Connection con = null;
	private static Properties props = new Properties();
	

    //ENSURE YOU DON'T CHANGE THE BELOW CODE WHEN YOU SUBMIT
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
	    try{
			
			FileInputStream fis = null;
			fis = new FileInputStream("C:\\Users\\842227\\Downloads\\mfrp-master\\src\\main\\resources\\database.properties");
			props.load(fis);
			
			// load the Driver Class
			Class.forName(props.getProperty("driver"));

			// create the connection now
            con = (Connection) DriverManager.getConnection(props.getProperty("url"),props.getProperty("username"),props.getProperty("password"));
	    }
	    catch(IOException e){
	        e.printStackTrace();
	    }
		return con;	
	}

}
