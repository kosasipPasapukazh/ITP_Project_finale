package com.model;

import java.util.Date;

public class SupplyProduct {
	
	private int ProductCode;
    private String ProductName;
    private Date Date;
    private int Quantity;
    
    public SupplyProduct(int ProductCode, String ProductName, Date Date, int Quantity ){
        
        this.ProductCode = ProductCode;
        this.ProductName = ProductName;
        this.Date = Date;
        this.Quantity= Quantity;
        
    }

    public int getProductCode() {
        return ProductCode;
    }

    public void setProductCode(int productCode) {
        this.ProductCode = ProductCode;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public int Quantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public Date Date() {
        return Date;
    }

    public void setDate(Date Date) {
        this.Date = Date;
    }
    


}
