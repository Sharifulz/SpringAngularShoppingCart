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
public class ProductController {
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
    
     @RequestMapping("getAllProduct.htm")
    public String getAllProduct(@ModelAttribute("product") Product stu, Model m) {
        
        List<Product> list = new ArrayList<>();
        list = pd.displayData();
        m.addAttribute("dataProduct", list);
        return "display";
    }

    @RequestMapping("fetchProduct.htm")
    public String returnRecord(@ModelAttribute("pro") Product stu, Model m) {

        List<Product> listRecordProduct = new ArrayList<>();
        listRecordProduct = pd.fetchSingleData(stu.getPid());
        m.addAttribute("listRecordProduct", listRecordProduct);

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
    
    
     @RequestMapping("updateProduct.htm")
    public String updateProduct(@ModelAttribute("pro") Product stu, Model m) {
        pd.updateUser(stu);

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
         m.addAttribute("msg", "PRODUCT UPDATED TO BASE");
        return "insert";
    }   
    
         // for delete
    @RequestMapping("deleteProduct.htm")
    public String deleteProduct(@ModelAttribute("pro") Product stu, Model m) {
        pd.deleteUser(stu);
        
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
    
    
             @RequestMapping("insertProduct.htm")
    public String addNew(@ModelAttribute("login") Product stu, Model m) {
        if (stu.getPname() != null && stu.getPrice() != null) {
            pd.addProduct(stu);
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
             m.addAttribute("msg", "PRODUCT ADDED TO BASE");
            return "insert";
        } else {
            return "login";
        }

    }
    
    //////////////////////////////////////////
    //////////////////////////////////////////
    //////////////////////////////////////////
    
             @RequestMapping("fileUploadServlet.htm")
     public void imageUpload(){
         
     }       
}
