/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import br.com.MODEL.MDUsuario;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
/**
 *
 * @author vinicius
 */
public class DMail {
    
    public DMail(){
        
    }
   public void  enviarMail(MDUsuario Musu) throws EmailException, MalformedURLException{
        
  HtmlEmail email = new HtmlEmail();
  
  email.setHostName("smtp.googlemail.com");
  email.addTo(Musu.getEmail_Destinatario(), Musu.getNome());
  email.setFrom(Musu.getEmail_Remtente(),"Digital company");
  email.setSubject("E-mail de teste com imagem embutida");
  
  // define a mensagem html
  email.setHtmlMsg("<a href=\"news/index.html\">Clique aqui para abrir o link</a>");

  // define a mensagem alternativa
  email.setTextMsg("Seu cliente de e-mail não suporta mensagens HTML");

  //envia o e-mail
  email.send();
   
  }
    
}
