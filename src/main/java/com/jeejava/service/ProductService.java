package com.jeejava.service;

import java.util.List;

import com.jeejava.dto.Product;

public interface ProductService {

	Product findProductById(int id);

	Product findProductByName(String name);

	void saveProduct(Product product);

	void updateProduct(Product product);

	void deleteProductById(int id);

	List<Product> findAllProducts();

	void deleteAllProducts();

	public boolean isProductAvailable(Product product);

}
