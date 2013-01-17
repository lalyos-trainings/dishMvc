package com.irondish.mvc;

import java.util.List;

import com.irondish.mvc.Product;

public interface ProductCatalog {

	public void addProduct(String productName, String price);
	public Product findById(Long id);
	public List<Product> getProducts();
	public void deleteProduct(Long id);
}
