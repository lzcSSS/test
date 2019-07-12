package com.lzc.entity;

public class Item {
    private Integer iid;
    private  String itemName;
    private Integer price;
    private String description;
    private String type;

    public Item() {
    }

    @Override
    public String toString() {
        return "Item{" +
                "iid=" + iid +
                ", itemName='" + itemName + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", type='" + type + '\'' +
                '}';
    }

    public Item(String itemName) {
        this.itemName = itemName;
    }

    public Integer getIid() {
        return iid;
    }

    public void setIid(Integer iid) {
        this.iid = iid;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
