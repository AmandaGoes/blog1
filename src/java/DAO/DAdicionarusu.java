package br.com.DAO;


import br.com.MODEL.MDUsuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author vinicius
 */
public class DAdicionarusu {
    
    Connection con ;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<MDUsuario> usult = new ArrayList();
    
       public void AdicicionarUsu(MDUsuario u) throws ClassNotFoundException{
           
           
           String sql  = "INSERT INTO Usuario(Email_Destinatario,Email_Remetente)VALUES(?,?);";
           con = new DConexao().conexao();
           
           try{
               pstm = con.prepareStatement(sql);
               
             
               pstm.setString(1,"mv7268019@gmail.com");
               pstm.setString(2, u.getEmail_Destinatario());
               
               pstm.execute();
               pstm.close();
               
           }catch(SQLException e){
               
           }
       }
       
       public ArrayList<MDUsuario> listarUsu() throws ClassNotFoundException{
           
            String selectUsu = "select * from Usuario";
            
            con = new DConexao().conexao();
            try{
                pstm = con.prepareStatement(selectUsu);
                rs = pstm.executeQuery(selectUsu);
                
                while(rs.next()){
                    
                    MDUsuario md  =  new MDUsuario();
                    md.setId(rs.getInt("id"));
                    md.setEmail_Remtente(rs.getString("Email_Remetente"));
                    md.setEmail_Destinatario(rs.getString("Email_Destinatario"));
                    md.setNome(rs.getString("Name"));
                    usult.add(md);
                }
                
                
                
            }catch(Exception e){
                   
            }
            
            return usult;
            
       }
    
}
