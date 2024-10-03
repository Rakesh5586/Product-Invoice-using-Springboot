package com.Rakesh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Rakesh.model.Product;
import com.Rakesh.repo.ProductRepo;
@Service
public class ProductServiceImp implements ProductService 
{
	 @Autowired
      ProductRepo repo;
	@Override
	public Product saveProduct(Product product) 
	{
		double total = 0;
		double dis = 0.0;
		double gst = 0.0;
		double invoicebill = 0.0;
		total  = product.getPrice()*product.getQuantity();
		if(total<2500)
		{
			dis = (total*10)/100;
		}
		else if(total>=2500 && total<5000)
		{
			dis = (total*15)/100;
		}
		else if(total>=5000)
		{
			dis = (total*30)/100;
		}
		gst = (total*18)/100;
		invoicebill = total-dis+gst;
		product.setTotal(total);
		product.setDiscount(dis);
		product.setGst_amt(gst);
		product.setInvoice_bill(invoicebill);
		Product saveProduct = repo.save(product);
		return saveProduct;
	}
	@Override
	public List<Product> getAllProduct() 
	{
		List<Product> listOfProduct  = (List<Product>) repo.findAll();
		return listOfProduct;
	}

	@Override
	public void deleteProduct(int cid) 
	{
		repo.deleteById(cid);
	}
	@Override
	public Product getOneProduct(int cid) 
	{
		Product getproduct = repo.findById(cid).get();
		return getproduct;
	}

	@Override
	public Product updateProduct(Product product) 
	{
		double total = 0;
		double dis = 0.0;
		double gst = 0.0;
		double invoicebill = 0.0;
		total  = product.getPrice()*product.getQuantity();
		if(total<2500)
		{
			dis = (total*10)/100;
		}
		else if(total>=2500 && total<5000)
		{
			dis = (total*15)/100;
		}
		else if(total>=5000)
		{
			dis = (total*30)/100;
		}
		gst = (total*18)/100;
		invoicebill = total-dis+gst;
		product.setTotal(total);
		product.setDiscount(dis);
		product.setGst_amt(gst);
		product.setInvoice_bill(invoicebill);
		Product saveProducts = repo.save(product);
		return saveProducts;
	}

}
