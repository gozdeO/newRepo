package com.eboookstore.controller;

import com.eboookstore.dao.ProductDao;
import com.eboookstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by Sony on 1.9.2016.
 */
@Controller
public class HomeController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(){
        return "home";
    }
    @RequestMapping("/productList")

    public String getProducts(Model model){
       List<Product> products=productDao.getAllProducts();


        model.addAttribute("products",products);

        return "productList";
    }
    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException{
        Product product=productDao.getProductById(productId);
        model.addAttribute(product);
        return "viewProduct";
    }
}
