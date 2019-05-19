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
 * @author l2pc208m
 */
@Controller
public class MemberController {

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

    @RequestMapping("insert.java")
    public String doSave(@ModelAttribute("member") Member mem, Model m) {
        md.addMember(mem);
        m.addAttribute("msg", "MEMBER ADDED");
        System.out.println("MEMBER ADDED 1");
        return "login";
    }

    @RequestMapping("checkMember.htm")
    public String checkMember(@ModelAttribute("login") Login stu, Model m) {

        if (stu.getPassword() != null || stu.getName() != null) {
            if (md.checkUser(stu.getName(), stu.getPassword())) {
                return "product";

            } else {
                m.addAttribute("msg", "LOG IN FAILED");
                return "login";

            }

        }
        return "login";

    }

    @RequestMapping("getAllMember.htm")
    public String getAllMember(@ModelAttribute("member") Login stu, Model m) {
        MemberDao md = new MemberDao();
        List<Member> list = new ArrayList<>();
        list = md.displayData();
        m.addAttribute("dataMember", list);
        return "display";
    }

    @RequestMapping("updateMember.htm")
    public String updateMember(@ModelAttribute("member") Member stu, Model m) {
        md.updateUser(stu);

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
         m.addAttribute("msg", "PRODUCT UPDATED");
        return "insert";
    }

       // for delete
    @RequestMapping("deleteMember.htm")
    public String deleteData(@ModelAttribute("login") Member stu, Model m) {
        md.deleteUser(stu);
        
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
          m.addAttribute("msg", "PRODUCT DELETED");
        return "insert";
    } 
        
    @RequestMapping("fetchMember.htm")
    public String returnRecord(@ModelAttribute("pro") Login stu, Model m) {

        List<Member> listRecordMember = new ArrayList<>();
        listRecordMember = md.fetchSingleData(stu.getId());
        m.addAttribute("listRecordMember", listRecordMember);

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
    
      @RequestMapping("insertMember.htm")
    public String addNew(@ModelAttribute("login") Member stu, Model m) {
        if (stu.getName() != null && stu.getEmail() != null && stu.getPassword() != null) {
            md.addMember(stu);
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
             m.addAttribute("msg", "MEMBER ADDED TO BASE");
            return "insert";
        } else {
            return "login";
        }

    }       
}
