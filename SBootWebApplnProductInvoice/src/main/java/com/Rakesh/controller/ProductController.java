package com.Rakesh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Rakesh.model.Product;
import com.Rakesh.service.ProductServiceImp;

@Controller
public class ProductController 
{
	@Autowired
	public ProductServiceImp service;
	
	@RequestMapping("/")
    public String homePage()
    {
    	return "home";
    }
	@RequestMapping("/addproductUrl")
    public String addProduct()
    {
    	return "addpro";
    }
	@RequestMapping("/saveUrl")
    public String saveProduct(Product product, ModelMap model)
    {
		service.saveProduct(product);
    	return "success";
    }
	@RequestMapping("/viewAllUrl")
	public String displayAllProduct(ModelMap model)
	{
		model.put("products",service.getAllProduct());
		return "viewproduct";
	}
	@RequestMapping("/deleteUrl/{cid}")
	public String deleteElectricBill(@PathVariable int cid, ModelMap model)
	{
		service.deleteProduct(cid);
		return "redirect:/viewAllUrl";
	}
	@RequestMapping("/editUrl/{cid}")
	public String getOneBill(@PathVariable int cid, Product product, ModelMap model)
	{
		model.put("command", service.getOneProduct(cid));
		service.getOneProduct(cid);
		return "editProduct";
	}
	@RequestMapping("/editsaveUrl")
	public String editSave(Product product, ModelMap model)
	{
		service.updateProduct(product);
		return "redirect:/viewAllUrl";
	}
	
	@RequestMapping("/viewOne")
	 public String viewProduct()
	 {
		 return "viewOnePro";
	 }
	@RequestMapping("/viewOneUrl")
	public String getOnePro(@RequestParam int cid, Product product, ModelMap model)
	{
		model.put("ccid",cid);
		if(product.getCid()==cid)
		{
			model.put("cids", service.getOneProduct(cid));
		    return "viewOneTab";
		}
		else
		{
			return "error";
		}
	}
	
	@RequestMapping("/edit")
	public String editPage()
	{
		return "redirect:/viewOne";
	}
}
