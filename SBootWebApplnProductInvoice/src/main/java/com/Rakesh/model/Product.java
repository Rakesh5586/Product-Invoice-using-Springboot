package com.Rakesh.model;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Product 
{ @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private int cid;
  private String cname;
  private String mobilenumber;
  private String pname;
  private double price;
  private int quantity;
  private double total;
  private double discount;
  private double gst_amt;
  private double invoice_bill;
public Product() {
	super();
}
public Product(int cid, String cname, String mobilenumber, String pname, double price, int quantity, double total,
		double discount, double gst_amt, double invoice_bill) {
	super();
	this.cid = cid;
	this.cname = cname;
	this.mobilenumber = mobilenumber;
	this.pname = pname;
	this.price = price;
	this.quantity = quantity;
	this.total = total;
	this.discount = discount;
	this.gst_amt = gst_amt;
	this.invoice_bill = invoice_bill;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(String mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getTotal() {
	return total;
}
public void setTotal(double total) {
	this.total = total;
}
public double getDiscount() {
	return discount;
}
public void setDiscount(double discount) {
	this.discount = discount;
}
public double getGst_amt() {
	return gst_amt;
}
public void setGst_amt(double gst_amt) {
	this.gst_amt = gst_amt;
}
public double getInvoice_bill() {
	return invoice_bill;
}
public void setInvoice_bill(double invoice_bill) {
	this.invoice_bill = invoice_bill;
}
@Override
public String toString() {
	return "Product [cid=" + cid + ", cname=" + cname + ", mobilenumber=" + mobilenumber + ", pname=" + pname
			+ ", price=" + price + ", quantity=" + quantity + ", total=" + total + ", discount=" + discount
			+ ", gst_amt=" + gst_amt + ", invoice_bill=" + invoice_bill + "]";
}
}
