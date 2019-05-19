/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.dao;

import com.exam.Login;
import com.exam.Member;
import com.exam.NewHibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;

/**
 *
 * @author l2pc208m
 */
@Controller
public class MemberDao {
    public String addMember(Member r){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();     
        ses.save(r); 
        ses.getTransaction().commit(); 
        ses.close();
        return "login";
    }
    
  
    
     public void updateUser(Member r){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();     
        ses.update(r); 
        ses.getTransaction().commit(); 
        ses.close();
    }
     public void deleteUser(Member r){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();     
        ses.delete(r); 
        ses.getTransaction().commit(); 
        ses.close();
    }
     public boolean checkUser(String name, String pass){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        Query q = ses.createQuery("From Member where name='"+name+"'and password='"+pass+"'");
        List<Member> list = q.list();
        if (list.size()>0) {
            ses.close();
            return true;
        } else {
            ses.close();
            return false;
        }
    }
      public List<Member> displayData(){
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        List<Member> list = new ArrayList<>();
        Query q = ses.createQuery("From Member");
        list = q.list(); 
        ses.close();
        return list;
        
    } 
         public List<Member> fetchSingleData(int id){
         Session ses = NewHibernateUtil.getSessionFactory().openSession();
        ses.getTransaction().begin();
        Query q = ses.createQuery("From Member where id="+id);
        List<Member> list = q.list();
        return list;
    }
}
