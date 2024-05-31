package com.test.po;

public class Cart {
    private Integer carid;

    private Integer pid;

    private String pname;

    private Integer count;

    private String imgurl;

    private Integer uid;

    private Double price;

    public Cart() {
    }

    public Cart(Integer carid, Integer pid, String pname, Integer count, String imgurl, Integer uid, Double price) {
        this.carid = carid;
        this.pid = pid;
        this.pname = pname;
        this.count = count;
        this.imgurl = imgurl;
        this.uid = uid;
        this.price = price;
    }

    public Integer getCarid() {
        return carid;
    }

    public void setCarid(Integer carid) {
        this.carid = carid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl == null ? null : imgurl.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "carid=" + carid +
                ", pid=" + pid +
                ", pname='" + pname + '\'' +
                ", count=" + count +
                ", imgurl='" + imgurl + '\'' +
                ", uid=" + uid +
                ", price=" + price +
                '}';
    }
}