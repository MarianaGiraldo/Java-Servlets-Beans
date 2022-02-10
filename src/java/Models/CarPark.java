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
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author maria
 */
public class CarPark {
    private String number;
    private String place;
    private Boolean is_occupied;
    private String ownersEmail;
    private int user_id;

    public CarPark() {
    }

    
    
    public CarPark(String number, String place, Boolean occupied, int user_id) {
        this.number = number;
        this.place = place;
        this.is_occupied = occupied;
        this.user_id = user_id;
    }

    /**
     * @return the number
     */
    public String getNumber() {
        return number;
    }

    /**
     * @param number the number to set
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * @return the place
     */
    public String getPlace() {
        return place;
    }

    /**
     * @param place the place to set
     */
    public void setPlace(String place) {
        this.place = place;
    }

    /**
     * @return the is_occupied
     */
    public Boolean getIs_occupied() {
        return is_occupied;
    }

    /**
     * @param is_occupied the is_occupied to set
     */
    public void setIs_occupied(Boolean is_occupied) {
        this.is_occupied = is_occupied;
    }
    
    /**
     * @return the ownersEmail
     */
    public String getOwnersEmail() {
        return ownersEmail;
    }

    /**
     * @param ownersEmail the is_occupied to set
     */
    public void setOwnersEmail(String ownersEmail) {
        this.ownersEmail = ownersEmail;
    }

    /**
     * @return the user_id
     */
    public int getUser_id() {
        return user_id;
    }

    /**
     * @param user_id the user_id to set
     */
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    
    
    
    //CRUD
    public String consultParking(){
        return "El parqueadero ha sido encontrado.";
    }
    
    public String editParking(){
        return "El parqueadero ha sido editado exitosamente.";
    }
    
    public String deleteParking(){
        return "El parqueadero ha sido eeliminado exitosamente";
    }
    
    public String insertParking(){
       return "El parqueadero se ha ingresado correctamente"; 
    }
    
    public String getData(){
        String occupiedString;
        if(this.getIs_occupied()){
            occupiedString = "Si";
        }else{
            occupiedString = "No";
        }
        String cadena = "<b>Numero:</b> "
                + this.getNumber()
                + "<br/> <b>Lugar:</b> "
                + this.getPlace()
                + "<br/> <b>¿Esta ocupado?:</b> "
                + occupiedString
                + "<br/> <b>Email del dueno actual:</b> "
                + this.getOwnersEmail();
        
        return cadena;
    }
    
    public ArrayList listParking(){
        ArrayList parking = new <CarPark>ArrayList();
        parking.add(this);
        return parking;
    }
    
    public boolean CreateCarPark(CarPark carPark) throws SQLException{
       // System.out.println("Entró a la función Create");
       try(Connection conn = Dao.conecta()){
           //System.out.println("Entró a la conexión");
           String query = "INSERT INTO carParks (`number`, `place`, `is_occupied`, `user_id`) VALUES (?, ?, ?, ?)";
           PreparedStatement statementUser = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
           statementUser.setString(1, carPark.getNumber());
           statementUser.setString(2, carPark.getPlace());
           statementUser.setBoolean(3, carPark.getIs_occupied());
           statementUser.setInt(4, carPark.getUser_id());
           
           int rowsInserted = statementUser.executeUpdate();
           return rowsInserted > 0;
       }catch (SQLException e) {
           System.err.println("Error: "+ e.getMessage());
           return false;
       }
    }
    
    public ResultSet getUserbyEmail(String email){
        String sql = "select * from Users where email = " + email + " limit 1;";
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
