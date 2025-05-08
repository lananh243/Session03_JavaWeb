package com.example.session03_java.bai10;

import java.util.ArrayList;
import java.util.List;

public class CartManager {
    private List<Product> cart = new ArrayList<>();
    private int nextId = 1;

    public void addProduct(Product product) {
        for (Product p : cart) {
            if (p.getId() == product.getId()) {
                System.out.println("Sản phẩm đã tồn tại trong giỏ hàng.");
                return;
            }
        }
        cart.add(product);
        System.out.println("Sản phẩm đã được thêm vào giỏ hàng.");
    }

    public List<Product> getCart() {
        return cart;
    }

    public void removeProduct(int id) {
        cart.removeIf(product -> product.getId() == id);
        System.out.println("Sản phẩm đã được xóa khỏi giỏ hàng");
    }

    public double getTotalPrice() {
        double total = 0;
        for (Product product : cart) {
            total += product.getPrice();
        }
        return total;
    }
}
