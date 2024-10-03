package com.Rakesh.service;

import java.util.List;

import com.Rakesh.model.Product;

public interface ProductService 
{
  public Product saveProduct(Product product);
  public Product getOneProduct(int cid);
  public void deleteProduct(int cid);
  public List<Product> getAllProduct();
  public Product updateProduct(Product product);
}
