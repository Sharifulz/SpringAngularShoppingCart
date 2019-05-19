/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;

import com.exam.Orders;
import com.exam.Purchase;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author shaarif
 */
@Path("/simplePurchase")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class PurchaseService {
    
    PurchaseServiceMan simpleService = new PurchaseServiceMan();

//    @GET
//    public List<Purchase> getAllStudent() {
//        
//        return simpleService.getAllStudent();
//    }
    
     @POST
    public Purchase addStudent(Purchase s){
        
        return simpleService.addStudent(s);
    }
   
}