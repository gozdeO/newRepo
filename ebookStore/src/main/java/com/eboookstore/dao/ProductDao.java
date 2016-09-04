package com.eboookstore.dao;

import com.eboookstore.model.Product;

import java.util.List;

/**
 * Created by Sony on 3.9.2016.
 */
public interface ProductDao {
    void addProduct(Product product);

    Product getProductById(String id);

    List<Product>  getAllProducts();

    void deleteProduct(String id);
}
