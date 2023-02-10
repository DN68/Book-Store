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
public class Orders {
    private int orderID;
    private int customerID;
    private String date;
    private int shippingid;
    private double totalmoney;

    public Orders() {
    }

    public Orders(int orderID, int customerID, String date, int shippingid, double totalmoney) {
        this.orderID = orderID;
        this.customerID = customerID;
        this.date = date;
        this.shippingid = shippingid;
        this.totalmoney = totalmoney;
    }

    public Orders(int customerID, int shippingid, double totalmoney) {
        this.customerID = customerID;
        this.shippingid = shippingid;
        this.totalmoney = totalmoney;
    }

    public Orders(int customerID, String date, int shippingid, double totalmoney) {
        this.customerID = customerID;
        this.date = date;
        this.shippingid = shippingid;
        this.totalmoney = totalmoney;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getShippingid() {
        return shippingid;
    }

    public void setShippingid(int shippingid) {
        this.shippingid = shippingid;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

   
}
