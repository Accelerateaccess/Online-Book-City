package com.test.controller;

import com.test.po.Cart;
import com.test.po.CartExample;
import com.test.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

@SessionAttributes({"total"})
@Controller
public class CartPayController {
    @Autowired
    private CartService cartService;

    @RequestMapping("/pay.do")
    public String pay(Integer uid, ModelMap map){
        CartExample cartExample = new CartExample();
        CartExample.Criteria criteria1 = new CartExample().createCriteria();
        criteria1.andCaridEqualTo(uid);
        List<Cart> cartList1= cartService.selectByExample(cartExample);
        double total = 0;
        for(Cart cart:cartList1){
            if(cart.getUid() == uid){
            total = total + cart.getCount()*cart.getPrice();
            map.addAttribute("total",total);}
        }
        return "pay";
    }
}
