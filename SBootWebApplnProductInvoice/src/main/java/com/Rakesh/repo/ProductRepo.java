package com.Rakesh.repo;

import org.springframework.data.repository.CrudRepository;

import com.Rakesh.model.Product;

public interface ProductRepo extends CrudRepository<Product, Integer> 
{

}
