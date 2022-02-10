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
 * @author maria
 */
public class Student extends UserBean {
    private String studentNumber;
    private Float averageMark;

    public Student() {
    }

    public Student(String studentNumber, Float averageMark, String name, String phoneNumber, String email, String userType) {
        super(name, phoneNumber, email, userType);
        this.studentNumber = studentNumber;
        this.averageMark = averageMark;
    }
    

    /**
     * @return the studentNumber
     */
    public String getStudentNumber() {
        return studentNumber;
    }

    /**
     * @param studentNumber the studentNumber to set
     */
    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    /**
     * @return the averageMark
     */
    public Float getAverageMark() {
        return averageMark;
    }

    /**
     * @param averageMark the averageMark to set
     */
    public void setAverageMark(Float averageMark) {
        this.averageMark = averageMark;
    }
    
    //CRUD
    public String consultStudent(){
        return "El usuario de estudiante ha sido encontrado exitosamente";
    }
    
    public String editStudent(){
        return "El usuario de estudiante ha sido editado exitosamente";
    }
    
    public String deleteStudent(){
        return "El usuario de estudiante ha sido eeliminado exitosamente";
    }
    
    public String insertStudent() throws SQLException{
        this.CreateStudent(this);
       return "El usuario de estudiante se ha ingresado correctamente"; 
    }
    
    public String getData(){
        String cadena = "<b>Nombre:</b> "
                + this.getName()
                + "<br/> <b>Telefono:</b> "
                + this.getPhoneNumber()
                + "<br/> <b>Correo:</b> "
                + this.getEmail()
                + "<br/> <b>Codigo Estudiante:</b> "
                + this.getStudentNumber()
                + "<br/> <b>Nota Promedio:</b> "
                + Float.toString(this.getAverageMark());
        
        return cadena;
        
    }
    
    public boolean CreateStudent(Student user) throws SQLException{
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
                   query = "Insert into students (`studentNumber`, `averageMark`, user_id) "
                           + " VALUES (?, ?, ?)";
                   PreparedStatement statementStudent = conn.prepareStatement(query);
                   statementStudent.setString(1, user.getStudentNumber());
                   statementStudent.setFloat(2, user.getAverageMark());
                   statementStudent.setInt(3, idUser);
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
