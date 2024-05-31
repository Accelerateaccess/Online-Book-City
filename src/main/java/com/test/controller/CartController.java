package com.test.controller;

import com.test.po.Cart;
import com.test.po.CartExample;
import com.test.po.Products;
import com.test.po.ProductsExample;
import com.test.service.CartService;
import com.test.service.ProductsService;
import com.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@SessionAttributes({"cartList"})
@Controller
public class CartController {

    @Autowired
    private ProductsService productsService;
    @Autowired
    private CartService cartService;

    @RequestMapping("/cart.do")
    public String cart(Integer pid,Integer uid, ModelMap map){
        ProductsExample productsExample = new ProductsExample();
        ProductsExample.Criteria criteria = new ProductsExample().createCriteria();
        criteria.andCidEqualTo(pid);
        Products product = productsService.selectByPrimaryKey(pid);
        CartExample cartExample = new CartExample();
        CartExample.Criteria criteria1 = new CartExample().createCriteria();
        criteria1.andCaridEqualTo(uid);
        List<Cart> cartList1= cartService.selectByExample(cartExample);
        int flage = 0;
        for (Cart cart1:cartList1){
            if (cart1.getPid() == pid && cart1.getUid() == uid)
            {
                int count = cart1.getCount()+1;
                cart1.setCount(count);
                flage = 1;
                int rows = cartService.updateByPrimaryKey(cart1);
            }
        }

        if(flage == 0){
            Cart cart = new Cart();
            cart.setPid(product.getPid());
            cart.setPname(product.getPname());
            cart.setImgurl(product.getImgurl());
            cart.setPrice(product.getPrice());
            cart.setUid(uid);
            cart.setCount(1);
            int rows = cartService.insert(cart);}

        List<Cart> cartList = cartService.selectByExample(new CartExample());
        map.addAttribute("cartList",cartList);
        return "cart";

    }

}
