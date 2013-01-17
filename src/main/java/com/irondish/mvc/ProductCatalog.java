package com.irondish.mvc;

import java.util.List;

import com.irondish.mvc.Product;

public interface ProductCatalog {

	public void addProduct(String productName, String price);
	public Product findByName(String productName);
	public List<Product> getProducts();
	public void deleteProduct(String productName);
}
