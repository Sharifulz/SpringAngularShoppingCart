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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author shaarif
 */
@Controller
public class PurchaseController {
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
         // for delete
    @RequestMapping("deletePurchase.htm")
    public String deleteProduct(@ModelAttribute("pur") Purchase stu, Model m) {
        pur.deleteUser(stu);
        
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
         m.addAttribute("msg", "PRODUCT DELETED TO BASE");
        return "insert";
    }      
}
