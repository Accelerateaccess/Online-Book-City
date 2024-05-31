package com.test.controller;

import com.test.po.Admins;
import com.test.po.AdminsExample;
import com.test.service.AdminService;
import com.test.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private ProductsService productsService;
    @RequestMapping("/adminlogin.do")
    public String toAdminlogin() {

        return "/adminlogin.jsp";
    }

    @RequestMapping("/adminlist.do")
    public String SelectAdmin(Admins admins, ModelMap map) {
/*        AdminsExample adminsExample = new AdminsExample();
        AdminsExample.Criteria criteria = adminsExample.createCriteria();
        criteria.andAdmindateEqualTo(admins.getAdminname());
        criteria.andAdmindateEqualTo(admins.getAdminpwd());
        List<Admins> adminslist = adminService.selectByExample(adminsExample);
        Admins admins1 = adminslist.get(0);
        map.put("admin",admins1.getAdminname());
        if(admins.getAdminname().trim().equals(admins1.getAdminname().trim())&&admins.getAdminpwd().trim().equals(admins1.getAdminpwd().trim()))*/
        AdminsExample adminsExample = new AdminsExample();
        AdminsExample.Criteria criteria = adminsExample.createCriteria();
        criteria.andAdmindateEqualTo("diudiu");
        criteria.andAdmindateEqualTo("diudiu");
        List<Admins> adminslist = adminService.selectByExample(adminsExample);
        if (adminslist.size() != 0) {
            Admins admins1 = adminslist.get(0);
            map.put("admin", admins1.getAdminname());

        }
            return "forward:indexs.do";
    }
    @RequestMapping("/delete.do")
    public String Deletedata(){

        int rows = productsService.deleteByPrimaryKey(96);
        System.out.println(rows);

        return "forward:indexs.do";
    }
    @RequestMapping("/login.ao")
    public String BackLogin(){
        return "forward:login.jsp";
    }
}