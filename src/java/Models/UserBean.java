/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Models;

import static Models.Dao.conecta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.ejb.Stateless;

/**
 *
 * @author Mariana
 */
@Stateless
public class UserBean {
private String name;
    private String phoneNumber;
    private String email;
    private String userType;

    public UserBean(){
        
    }

    public UserBean(String name, String phoneNumber, String email, String userType) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.userType = userType;
    }
    
    
    public String purchaseParkingPlass(String tipoPersona){
        String cadena;
        cadena = "El parqueadero ha sido asignado al "
                + tipoPersona
                + ": "
                + "<br/> <b>Nombre:</b> "
                + this.getName()
                + "<br/> <b>Telefono:</b> "
                + this.getPhoneNumber()
                + "<br/> <b>Correo:</b> "
                + this.getEmail();
        return cadena;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the phoneNumber
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * @param phoneNumber the phoneNumber to set
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
    
    /**
     * @return the userType
     */
    public String getUserType() {
        return userType;
    }

    /**
     * @param userType the userType to set
     */
    public void setUserType(String userType) {
        this.userType = userType;
    }
    
    
    /*public ArrayList listUsers(){
    ArrayList user = new ArrayList();
    user.add(this.getName());
    user.add(this.getEmail());
    user.add(this.getPhoneNumber());
    user.add(this.getUserType());
    return user;
    }*/

    public ResultSet listUsers(){
        String sql = "select * from Users";
        ResultSet rs = null;
        PreparedStatement consulta;
        try{
            if(Dao.conecta() != null){
                Connection con = conecta();
                consulta = con.prepareStatement(sql);
                rs = consulta.executeQuery();
            }
            
        }catch(SQLException ex){
            System.out.print(ex.getMessage());
        }
        
        return rs;
    }
}
