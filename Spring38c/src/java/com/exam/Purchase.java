package com.exam;
// Generated May 18, 2019 7:29:39 PM by Hibernate Tools 4.3.1



/**
 * Purchase generated by hbm2java
 */
public class Purchase  implements java.io.Serializable {


     private Integer id;
     private Integer pid;
     private String pname;
     private Integer unitprice;
     private Integer totalprice;
     private String status;

    public Purchase() {
    }

    public Purchase(Integer pid, String pname, Integer unitprice, Integer totalprice, String status) {
       this.pid = pid;
       this.pname = pname;
       this.unitprice = unitprice;
       this.totalprice = totalprice;
       this.status = status;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getPid() {
        return this.pid;
    }
    
    public void setPid(Integer pid) {
        this.pid = pid;
    }
    public String getPname() {
        return this.pname;
    }
    
    public void setPname(String pname) {
        this.pname = pname;
    }
    public Integer getUnitprice() {
        return this.unitprice;
    }
    
    public void setUnitprice(Integer unitprice) {
        this.unitprice = unitprice;
    }
    public Integer getTotalprice() {
        return this.totalprice;
    }
    
    public void setTotalprice(Integer totalprice) {
        this.totalprice = totalprice;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }




}


