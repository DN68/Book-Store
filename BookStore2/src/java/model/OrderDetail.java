/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Map;

/**
 *
 * @author NITRO
 */
public class OrderDetail {
    private int id;
    private int orderID;
    private String productname;
    private int quantity;
    private double productprice;

    public OrderDetail() {
    }

    public OrderDetail(int id, int orderID, String productname, int quantity, double productprice) {
        this.id = id;
        this.orderID = orderID;
        this.productname = productname;
        this.quantity = quantity;
        this.productprice = productprice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getProductprice() {
        return productprice;
    }

    public void setProductprice(double productprice) {
        this.productprice = productprice;
    }

    
    
   
    
    
}
