/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Models;

/**
 *
 * @author maria
 */
public class Login {
    private String email;
    private String password;
    private String token;
    private String role;

    public Login(String email, String password, String token, String role) {
        this.email = email;
        this.password = password;
        this.token = token;
        this.role = role;
    }

    public Login() {
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
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the token
     */
    public String getToken() {
        return token;
    }
    
    /**
     * @param token the token to set
     */
    public void setToken(String token) {
        this.token = token;
    }
    
    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

    public String allowAccess(){
        String allow = "Acceso autorizado a " + this.getEmail() +
                " con password " + this.getPassword() + " y perfil " +
                this.getRole();
        return allow;
    }
    
    public String denyAccess(){
        String deny = "Acceso denegado a " + this.getEmail() +
                ". Intentelo mas tarde..." ;
        return deny;
    }

    public Boolean validateLogin(String emailForm, String passwordForm){
        return emailForm.equals(this.getEmail()) && 
                passwordForm.equals(this.getPassword());
    }
    
}
