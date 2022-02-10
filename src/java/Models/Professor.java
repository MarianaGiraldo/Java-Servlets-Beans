/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Mariana
 */
public class Professor extends UserBean {
    private int salary;
    
    public Professor(){
        
    }

    public Professor(int salary, String name, String phoneNumber, String email, String userType) {
        super(name, phoneNumber, email, userType);
        this.salary = salary;
    }

    
    /**
     * @return the salary
     */
    public int getSalary() {
        return salary;
    }

    /**
     * @param salary the salary to set
     */
    public void setSalary(int salary) {
        this.salary = salary;
    }
    
    //CRUD
    public String consultProfessor(){
        return "El usuario de profesor ha sido encontrado exitosamente";
    }
    
    public String editProfessor(){
        return "El usuario de profesor ha sido editado exitosamente";
    }
    
    public String deleteProfessor(){
        return "El usuario de profesor ha sido eeliminado exitosamente";
    }
    
    public String insertProfessor() throws SQLException{
        this.CreateProfessor(this);
       return "El usuario de profesor se ha ingresado correctamente"; 
    }
    
    public String getData(){
        String cadena = "<b>Nombre:</b> "
                + this.getName()
                + "<br/> <b>Telefono:</b> "
                + this.getPhoneNumber()
                + "<br/> <b>Correo:</b> "
                + this.getEmail()
                + "<br/> <b>Salario:</b> "
                + this.getSalary();
        
        return cadena;
    }
    
    public boolean CreateProfessor(Professor user) throws SQLException{
       // System.out.println("Entró a la función Create");
       try(Connection conn = Dao.conecta()){
           //System.out.println("Entró a la conexión");
           String query = "INSERT INTO users (`Name`, `PhoneNumber`, `Email`, `UserType`) VALUES (?, ?, ?, ?)";
           PreparedStatement statementUser = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
           statementUser.setString(1, user.getName());
           statementUser.setString(2, user.getPhoneNumber());
           statementUser.setString(3, user.getEmail());
           statementUser.setString(4, user.getUserType());
           
           int rowsInserted = statementUser.executeUpdate();
           if (rowsInserted > 0){
               //System.out.println("Statement Pet ejecutado");
               ResultSet generatedKeys= statementUser.getGeneratedKeys();
               if(generatedKeys.next()){
                   int idUser = generatedKeys.getInt(1);
                   query = "Insert into professors (`salary`, `user_id`) "
                           + " VALUES (?, ?)";
                   PreparedStatement statementStudent = conn.prepareStatement(query);
                   statementStudent.setInt(1, user.getSalary());
                   statementStudent.setInt(2, idUser);
                   rowsInserted = statementStudent.executeUpdate();
                   if (rowsInserted > 0){
                       return true;
                   }
               }
           }
           return false;
       }catch (SQLException e) {
           System.err.println("Error: "+ e.getMessage());
           return false;
       }
        
    }
}
