/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static org.eclipse.jdt.internal.compiler.parser.Parser.name;

/**
 *
 * @author Kavindu Yasintha
 */
public class user {
    
    
    private int id;
    private String username;
    private String password;
    private  String email;
    private  String fullname;
    private String gender;
    private String city;
    
    
    public user()
    {
        
        
        
        
    }
    
    public user(String name,String email, String password)
    {
        
        
        this.username=name;
        this.email=email;
        this.password=password;
        
        
        
    }
    
   
    public String getName() {
        return username;
    }

    

    public String getEmail() {
        return email;
    }

    

    public String getPassword() {
        return password;
    }

    

     
    
    
    
    
}
