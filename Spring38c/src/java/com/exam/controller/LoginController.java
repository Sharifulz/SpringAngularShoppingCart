/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.controller;

import com.exam.Login;
import com.exam.Member;
import com.exam.Orders;
import com.exam.Product;
import com.exam.Purchase;
import com.exam.dao.LoginDao;
import com.exam.dao.MemberDao;
import com.exam.dao.OrderDao;
import com.exam.dao.ProductDao;
import com.exam.dao.PurchaseDao;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author l2pc208m
 */
@Controller
public class LoginController {

    LoginDao ld = new LoginDao();
    MemberDao md = new MemberDao();
    ProductDao pd = new ProductDao();
    OrderDao od = new OrderDao();
    PurchaseDao pur = new PurchaseDao();
    
    List<Login> listAllAdmin = new ArrayList<>();
    List<Member> listAllMember = new ArrayList<>();
    List<Product> listAllProduct = new ArrayList<>();
    List<Orders> listAllOrders = new ArrayList<>();
    List<Purchase> listAllPurchase = new ArrayList<>();

    // for log in
    @RequestMapping("checkAdmin.htm")
    public String aUser(@ModelAttribute("login") Login stu, Model m) {

        if (stu.getPassword() != null || stu.getName() != null) {
            if (ld.checkUser(stu.getName(), stu.getPassword())) {

                listAllAdmin = ld.displayData();
                listAllMember = md.displayData();
                listAllProduct = pd.displayData();
                listAllOrders = od.displayData();
                listAllPurchase = pur.displayData();
                
                m.addAttribute("listAllAdmin", listAllAdmin);
                m.addAttribute("listAllMember", listAllMember);
                m.addAttribute("listAllProduct", listAllProduct);
                m.addAttribute("listAllOrders", listAllOrders);
                m.addAttribute("listAllPurchase", listAllPurchase);

                m.addAttribute("msg", "LOG IN SUCCESSED");
                return "insert";
                
                
            } else {
                m.addAttribute("msg", "LOG IN FAILED");
                return "login";
            }
        }
        return "login";
    }

    @RequestMapping("insertAdmin.htm")
    public String addNew(@ModelAttribute("login") Login stu, Model m) {
        if (stu.getName() != null && stu.getEmail() != null && stu.getPassword() != null) {
            ld.addUser(stu);
             listAllAdmin = ld.displayData();
                listAllMember = md.displayData();
                listAllProduct = pd.displayData();
                listAllOrders = od.displayData();
                listAllPurchase = pur.displayData();
                
                m.addAttribute("listAllAdmin", listAllAdmin);
                m.addAttribute("listAllMember", listAllMember);
                m.addAttribute("listAllProduct", listAllProduct);
                m.addAttribute("listAllOrders", listAllOrders);
                m.addAttribute("listAllPurchase", listAllPurchase);
            
             m.addAttribute("msg", "ADMIN ADDED TO BASE");
            return "insert";
        } else {
            return "login";
        }

    }

    // for delete
    @RequestMapping("deleteAdmin.htm")
    public String deleteData(@ModelAttribute("login") Login stu, Model m) {
        ld.deleteUser(stu);
         listAllAdmin = ld.displayData();
                listAllMember = md.displayData();
                listAllProduct = pd.displayData();
                listAllOrders = od.displayData();
                listAllPurchase = pur.displayData();
                
                m.addAttribute("listAllAdmin", listAllAdmin);
                m.addAttribute("listAllMember", listAllMember);
                m.addAttribute("listAllProduct", listAllProduct);
                m.addAttribute("listAllOrders", listAllOrders);
                m.addAttribute("listAllPurchase", listAllPurchase);
         m.addAttribute("msg", "ADMIN DELETED");
        return "insert";
    }

    @RequestMapping("updateAdmin.htm")
    public String updateData(@ModelAttribute("login") Login stu, Model m) {
        ld.updateUser(stu);
        listAllAdmin = ld.displayData();
                listAllMember = md.displayData();
                listAllProduct = pd.displayData();
                listAllOrders = od.displayData();
                listAllPurchase = pur.displayData();
                
                m.addAttribute("listAllAdmin", listAllAdmin);
                m.addAttribute("listAllMember", listAllMember);
                m.addAttribute("listAllProduct", listAllProduct);
                m.addAttribute("listAllOrders", listAllOrders);
                m.addAttribute("listAllPurchase", listAllPurchase);
        
         m.addAttribute("msg", "ADMIN UPDATED");
        return "insert";
    }

    @RequestMapping("back.htm")
    public String goBack(@ModelAttribute("login") Login stu, Model m) {
                listAllAdmin = ld.displayData();
                listAllMember = md.displayData();
                listAllProduct = pd.displayData();
                listAllOrders = od.displayData();
                listAllPurchase = pur.displayData();
        
         m.addAttribute("listAllAdmin", listAllAdmin);
                m.addAttribute("listAllMember", listAllMember);
                m.addAttribute("listAllProduct", listAllProduct);
                m.addAttribute("listAllOrders", listAllOrders);
                m.addAttribute("listAllPurchase", listAllPurchase);
        return "insert";
    }

    @RequestMapping("show.htm")
    public String showData(@ModelAttribute("login") Login stu, Model m) {
        LoginDao ld = new LoginDao();
        List<Login> list = new ArrayList<>();
        list = ld.displayData();
        m.addAttribute("data", list);
        return "display";
    }

    // admin record fetch + restore admin and member table data
    @RequestMapping("fetch.htm")
    public String returnRecord(@ModelAttribute("login") Login stu, Model m) {
        LoginDao ld = new LoginDao();
        MemberDao md = new MemberDao();

        List<Login> listRecordAdmin = new ArrayList<>();

        listRecordAdmin = ld.fetchSingleData(stu.getId());
                listAllAdmin = ld.displayData();
                listAllMember = md.displayData();
                listAllProduct = pd.displayData();
                listAllOrders = od.displayData();
                listAllPurchase = pur.displayData();

             m.addAttribute("listRecordAdmin", listRecordAdmin);
                m.addAttribute("listAllAdmin", listAllAdmin);
                m.addAttribute("listAllMember", listAllMember);
                m.addAttribute("listAllProduct", listAllProduct);
                m.addAttribute("listAllOrders", listAllOrders);
                m.addAttribute("listAllPurchase", listAllPurchase);

        return "insert";
    }

}
