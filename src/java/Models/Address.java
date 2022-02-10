/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Models;

import java.util.ArrayList;

/**
 *
 * @author maria
 */
public class Address {
    private String street;
    private String city;
    private String state;
    private int postalCode;
    private String country;

    public Address(String street, String city, String state, int postalCode, String country) {
        this.street = street;
        this.city = city;
        this.state = state;
        this.postalCode = postalCode;
        this.country = country;
    }

    public Address() {
    }

    
    /**
     * @return the street
     */
    public String getStreet() {
        return street;
    }

    /**
     * @param street the street to set
     */
    public void setStreet(String street) {
        this.street = street;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the state
     */
    public String getState() {
        return state;
    }

    /**
     * @param state the state to set
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * @return the postalCode
     */
    public int getPostalCode() {
        return postalCode;
    }

    /**
     * @param postalCode the postalCode to set
     */
    public void setPostalCode(int postalCode) {
        this.postalCode = postalCode;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

    public boolean Validate(){
        return true;
    }
    
    public String OutputAsLabel(){
        String label
                = this.getStreet() 
                + ", "
                + this.getCity() 
                + ", "
                + this.getState() 
                + ", "
                + this.getCountry()
                + " - "
                + this.getPostalCode()
                + ".";
        return label;
    }
    
    //CRUD
    public String consultAddress(){
        return "La dirección ha sido encontrada exitosamente";
    }
    
    public String editAddress(){
        return "La dirección ha sido editada exitosamente";
    }
    
    public String deleteAddress(){
        return "La dirección ha sido eeliminada exitosamente";
    }
    
    public String insertAddress(){
       return "La dirección se ha ingresado correctamente"; 
    }
    
    
    public ArrayList listAddress(){
        ArrayList address = new <Address>ArrayList();
        address.add(this);
        return address;
    }
}
