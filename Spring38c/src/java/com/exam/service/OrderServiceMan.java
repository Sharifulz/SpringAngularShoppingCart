/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Orders;
import com.exam.Product;
import com.exam.dao.OrderDao;
import com.exam.dao.ProductDao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author shaarif
 */
public class OrderServiceMan {
    
     private Map<Integer, Orders> studentMap = new HashMap();
    OrderDao dao;

    public OrderServiceMan() {
        for (Orders s : OrderDao.doQuery()) {
            studentMap.put(s.getId(), s);
        }
    }
    
     public List<Orders> getAllStudent() {
        return new ArrayList<Orders>(studentMap.values());
    }

    
    
    OrderDao od = new OrderDao();
     public Orders addStudent(Orders stu) {
        od.addOrders(stu);
        return stu;
    }
     
        //delete data     
    public void removeStudent(int id) {
        Orders s = new Orders();
        s.setId(id);
        dao.doDelete(s);
    }
}
