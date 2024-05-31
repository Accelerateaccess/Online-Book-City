package com.test.controller;

import com.test.po.User;
import com.test.po.UserExample;
import com.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;
@SessionAttributes({"username","uid"})
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login.do")
    public String SelectUser(User user, ModelMap map){
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameEqualTo(user.getUsername());
        criteria.andPasswordEqualTo(user.getPassword());

        List<User> userList = userService.selectByExample(userExample);
        User user1 = userList.get(0);
        /*map.put("username", user1.getUsername());*/

       if(user.getUsername().trim().equals(user1.getUsername().trim())&&user.getPassword().trim().equals(user1.getPassword().trim())) {
           map.put("username", user1.getUsername());
           map.put("uid",user1.getUid());
          /* return "index";*/
           return "forward:index.do";
       }
       else
            return "error";
    }
//    @RequestMapping("/login.zo")
//    public String testlogintwo(){
//
//        return "/WEB-INF/register.jsp";
//
//    }
    @RequestMapping("/register.do")
    public String Register(String username,String password, ModelMap map){
        User user1 = new User(password, username);
        int raws = userService.insertSelective(user1);
        System.out.println(raws);
        return "forward:login.jsp";

    }
}
