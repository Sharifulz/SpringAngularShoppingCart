/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Member;
import com.exam.NewHibernateUtil;
import com.exam.Orders;
import com.exam.Product;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author l2pc208m
 */
public class ProductDao {

    public static List<Product> doQuery() {
        List<Product> list = null;
        Session session = NewHibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        list = session.createQuery("from Product").list();
        return list;
    }

    public List<Product> fetchSingleData(int id) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("From Product where pid=" + id);
        List<Product> list = q.list();
        return list;
    }

    public List<Product> displayData() {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Product> list = new ArrayList<>();
        Query q = ses.createQuery("From Product");
        list = q.list();
        ses.close();
        return list;

    }

    public void updateUser(Product r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.update(r);
        ses.getTransaction().commit();
        ses.close();
    }

    public void deleteUser(Product r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.delete(r);
        ses.getTransaction().commit();
        ses.close();
    }

    
    public void addOrders(Orders r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(r);
        ses.getTransaction().commit();
        ses.close();
       
    }
    //overloading method
       public void addProduct(Product r) {
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        ses.save(r);
        ses.getTransaction().commit();
        ses.close();
       
    }
}
