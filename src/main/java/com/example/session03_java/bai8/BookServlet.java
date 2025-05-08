package com.example.session03_java.bai8;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "BookServlet", value = "/BookServlet")
public class BookServlet extends HttpServlet {
    private List<Book> bookList = new ArrayList<>();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String searchTitle =  request.getParameter("searchTitle");
        List<Book> searchBookList = new ArrayList<>();
        if (searchTitle != null && !searchTitle.isEmpty()) {
            for (Book book : bookList) {
                if (book.getTitle().toLowerCase().contains(searchTitle.toLowerCase())) {
                    searchBookList.add(book);
                }
            }
        } else {
            System.err.println("Không tìm kiếm được sản phẩm phù hợp");
        }
        request.setAttribute("bookList", searchBookList);
        request.getRequestDispatcher("homeProduct.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        int year = Integer.parseInt(request.getParameter("year"));

        bookList.add(new Book(title, author, year));
        request.setAttribute("bookList", bookList);
        request.getRequestDispatcher("homeProduct.jsp").forward(request, response);
    }

    public void destroy() {
    }
}