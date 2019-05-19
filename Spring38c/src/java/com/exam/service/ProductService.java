/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam.service;


import com.exam.Orders;
import com.exam.Product;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;



/**
 *
 * @author l2pc208m
 */
@Path("/simple")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ProductService {
     ProductServiceMan simpleService = new ProductServiceMan();

    @GET
    public List<Product> getAllStudent() {
        
        return simpleService.getAllStudent();
    }
    
     
    @POST
    public Orders addStudent(Orders s){
        
        return simpleService.addStudent(s);
    }
}
