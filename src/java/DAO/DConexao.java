/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author vinicius
 */
public class DConexao {
    
    public Connection conexao() throws ClassNotFoundException{
        Connection conn = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String sql = "jdbc:mysql://localhost:3306/Projeto_facul?user=root&password=Guinho@0204";
            conn = DriverManager.getConnection(sql);
        }catch(SQLException e){
            
        }
        return conn;
    
}
    
}
