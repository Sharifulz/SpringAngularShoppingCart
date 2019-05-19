/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Orders;
import com.exam.Product;
import com.exam.dao.ProductDao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author l2pc208m
 */
public class ProductServiceMan {
     private Map<Integer, Product> studentMap = new HashMap();
    ProductDao dao;

    public ProductServiceMan() {
        for (Product s : ProductDao.doQuery()) {
            studentMap.put(s.getPid(), s);
        }
    }
    
     public List<Product> getAllStudent() {
        return new ArrayList<Product>(studentMap.values());
    }

   public Orders addStudent(Orders stu) {
        dao.addOrders(stu);
        return stu;
    }

}
