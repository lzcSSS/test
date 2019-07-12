package com.lzc.entity;

import com.lzc.entity.Item;
import com.lzc.entity.User;

public class Items {
    private Integer itid;
    private Item item;
    private User user;
    private int num;

    public Items() {
    }

    public Integer getItid() {
        return itid;
    }

    public void setItid(Integer itid) {
        this.itid = itid;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "Items{" +
                "itid=" + itid +
                ", item=" + item +
                ", user=" + user +
                ", num=" + num +
                '}';
    }
}
