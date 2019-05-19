/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Login;
import com.exam.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author l2pc208m
 */
public class LoginDao {
    public boolean checkUser(String name, String pass){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        Query q = ses.createQuery("From Login where name='"+name+"'and password='"+pass+"'");
        List<Login> list = q.list();
        if (list.size()>0) {
            ses.close();
            return true;
        } else {
            ses.close();
            return false;
        }
    }
    
    public String addUser(Login r){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();     
        ses.save(r); 
        ses.getTransaction().commit(); 
        ses.close();
        return "insert";
    }
      public String updateUser(Login r){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();     
        ses.update(r); 
        ses.getTransaction().commit(); 
        ses.close();
        return "insert";
    }
    
     
    public void deleteUser(Login r){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();     
        ses.delete(r); 
        ses.getTransaction().commit(); 
        ses.close();
    }
    
    public List<Login> displayData(){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Login> list = new ArrayList<>();
        Query q = ses.createQuery("From Login");
        list = q.list(); 
        ses.close();
        return list;
        
    }
//    public String updateUser(Login r){
//        Session ses = NewHibernateUtil.getSessionFactory().openSession();
//        ses.getTransaction().begin();
//        ses.update(r);
//        ses.getTransaction().commit();
//        ses.close();
//        return "display";
//    }
    
    public boolean checkDuplicate(int id){
         Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("From Login where id="+id);
        List<Login> list = q.list();
        if (list.size()>0) {
            return true;
        } else {
            return false;
        }
    }
    
    public List<Login> fetchSingleData(int id){
         Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("From Login where id="+id);
        List<Login> list = q.list();
        return list;
    }
}
