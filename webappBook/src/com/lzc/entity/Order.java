package com.lzc.entity;

import java.util.ArrayList;
import java.util.List;

public class Order {

    private Integer uid;

     private  List<Item> items = new ArrayList<>();

    public List<Item> getItems() {
        return items;
    }


    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
}
