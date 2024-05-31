package com.test.controller;

import com.test.po.Products;
import com.test.po.ProductsExample;
import com.test.po.User;
import com.test.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@SessionAttributes("{productpid}")
@Controller
public class ProductsController {

    @Autowired
    private ProductsService productsService;
    @RequestMapping("/index.do")
    public String SelectAll(ModelMap map){
        List<Products> productsList = productsService.selectByExample(new ProductsExample());
        map.put("productsList",productsList);
        return "booklist";
    }
    @RequestMapping("/bookdetails.do")
    public String Booklist(int pid,ModelMap map){
        Products products = productsService.selectByPrimaryKey(pid);
        map.put("productdesc",products.getPdesc());
        map.put("productname",products.getPname());
        map.put("productprice",products.getPrice());
        map.put("productpid",products.getPid());
        map.put("productimgurl",products.getImgurl());
        return "bookdetails";
    }
/*    @RequestMapping("/bookdetails.dd")
    public String BackToBooklist()
    {
        return "foward:index.do";
    }*/
    @RequestMapping("/indexs.do")
    public String SelectAlltwo(ModelMap map){
        List<Products> productsList = productsService.selectByExample(new ProductsExample());
        map.put("productsList",productsList);
        return "adminlist";
    }
    @RequestMapping("/insert.do")
    public String Insertbook(String pname,double price){
        Products products = new Products(pname, price);
        int rows = productsService.insertSelective(products);
        System.out.println(rows);
        return "forward:indexs.do";
    }
    @RequestMapping("bookdetails.dd")
    public String Back(){
        return "forward:index.do";
    }

    @RequestMapping("search.do")
    public String Search(ModelMap map){
        Products products = productsService.selectByPrimaryKey(5);
        map.put("productdesc",products.getPdesc());
        map.put("productname",products.getPname());
        map.put("productprice",products.getPrice());
        map.put("productpid",products.getPid());
        map.put("productimgurl",products.getImgurl());
        return "bookdetails";
    }
}
