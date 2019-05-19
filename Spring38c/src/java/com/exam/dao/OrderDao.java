/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.NewHibernateUtil;
import com.exam.Orders;
import com.exam.Product;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author shaarif
 */
public class OrderDao {

      public static List<Orders> doQuery() {
        List<Orders> list = null;
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Criteria c = session.createCriteria(Orders.class);
        list = c.list();
// list = session.createQuery("from Orders").list();
        return list;
    }
        public List<Orders> displayData() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Orders> list = new ArrayList<>();
        Query q = ses.createQuery("From Orders");
        list = q.list();
        ses.close();
        return list;

    }
      
        public void addOrders(Orders r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(r);
        ses.getTransaction().commit();
        ses.close();
       
    }
        
              //delete data
          public static void doDelete(Orders stu) {
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(stu);
        session.getTransaction().commit();
    }
}
