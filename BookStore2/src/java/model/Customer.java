/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author NITRO
 */
public class Customer {

    private int customerid;
    private String fullname;
    private String email;
    private String address;
    private String phone;
    
    private String username;
    private String password;

    public Customer(int customerid, String fullname, String email, String address, String phone, String username, String password) {
        this.customerid = customerid;
        this.fullname = fullname;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.username = username;
        this.password = password;
    }

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Customer() {
    }

    public Customer(int customerid, String fullname, String address, String phone, String username, String password) {
        this.customerid = customerid;
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        this.username = username;
        this.password = password;
    }

    public Customer(int customerId, String fullname, String address, String phone, double amount, String username, String password) {
        this.customerid = customerId;
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        
        this.username = username;
        this.password = password;
    }

    public int getCustomerId() {
        return customerid;
    }

    public void setCustomerId(int customerId) {
        this.customerid = customerId;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Customer{" + "customerid=" + customerid + ", fullname=" + fullname + ", email=" + email + ", address=" + address + ", phone=" + phone + ", username=" + username + ", password=" + password + '}';
    }

    

}
