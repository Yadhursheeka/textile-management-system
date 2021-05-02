package com.itp.model;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */


/*
 * This is the product model class
 * which stores the details of the products.
 */

public class Product {
	
	private String productID;
	
	private String productName;
	
	private String productCategory;
	
	private int productQty;
	
	private String productSize;
	
	private double productPrice;
	
	private int productReOrderLevel;
	
	/*
	 * @return productID
	 */
	public String getProductID() {
		return productID;
	}
	
	/*
	 * @param this.productID set to productID
	 */
	public void setProductID(String productID) {
		this.productID = productID;
	}
	
	/*
	 * @return productName
	 */
	public String getProductName() {
		return productName;
	}
	
	/*
	 * @param this.productName set to productName
	 */
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	/*
	 * @return productCategory
	 */
	public String getProductCategory() {
		return productCategory;
	}
	
	/*
	 * @param this.productCategory set to productCategory
	 */
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	
	/*
	 * @return productQty
	 */
	public int getProductQty() {
		return productQty;
	}
	
	/*
	 * @param this.productQty set to productQty
	 */
	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}
	
	/*
	 * @return productSize
	 */
	public String getProductSize() {
		return productSize;
	}
	
	/*
	 * @param this.productSize set to productSize
	 */
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	
	/*
	 * @return productPrice
	 */
	public double getProductPrice() {
		return productPrice;
	}
	
	/*
	 * @param this.productPrice set to productPrice
	 */
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	
	/*
	 * @return productReOrderLevel
	 */
	public int getProductReOrderLevel() {
		return productReOrderLevel;
	}
	
	/*
	 * @param this.productReOrderLevel set to productReOrderLevel
	 */
	public void setProductReOrderLevel(int productReOrderLevel) {
		this.productReOrderLevel = productReOrderLevel;
	}

}
