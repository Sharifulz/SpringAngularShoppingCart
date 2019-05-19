/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.NewHibernateUtil;
import com.exam.Orders;
import com.exam.Product;
import com.exam.Purchase;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author shaarif
 */
public class PurchaseDao {
     public void addOrders(Purchase r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(r);
        ses.getTransaction().commit();
        ses.close();
       
    }
     
      public List<Purchase> displayData() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Purchase> list = new ArrayList<>();
        Query q = ses.createQuery("From Purchase");
        list = q.list();
        ses.close();
        return list;

    }
   public void deleteUser(Purchase r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(r);
        ses.getTransaction().commit();
        ses.close();
    }
}
