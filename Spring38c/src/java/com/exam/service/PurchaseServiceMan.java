/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Orders;
import com.exam.Purchase;
import com.exam.dao.OrderDao;
import com.exam.dao.PurchaseDao;

/**
 *
 * @author shaarif
 */
public class PurchaseServiceMan {
     
    PurchaseDao pd = new PurchaseDao();
     public Purchase addStudent(Purchase stu) {
        pd.addOrders(stu);
        return stu;
    }
}
