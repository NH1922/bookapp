package com.nh.bookapp;

import com.books.Book;

import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookApp
 */

@WebServlet("/BookApp")
public class BookApp extends HttpServlet {

    private static final long serialVersionUID = 1L;
    ArrayList<Book>Books = new ArrayList<Book>();
    static int id = 0;

    /*List<String> BookNames = new ArrayList<String>();
    List<String> Authors = new ArrayList<String>();
    List<String> Costs = new ArrayList<String>();*/

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookApp() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //response.getWriter().append("Served at: ").append(request.getContextPath());

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
        String bookName = request.getParameter("bookname");
        String author = request.getParameter("authorname");
        String bookCost = request.getParameter("cost");
        String url = ("");
        /*BookNames.add(bookName);
        Authors.add(author);
        Costs.add(cost);*/
        Book newBook = new Book();
        
        if(bookName.length()!=0&&author.length()!=0&&bookCost.length()!=0)
        {
            newBook.setAuthorName(author);
            newBook.setName(bookName);
            newBook.setCost(Float.parseFloat(bookCost));
            newBook.setId(id++);
            Books.add(newBook);
            //request.setAttribute("Book", newBook);
            //url =("/displayBook.jsp");
        }
        request.setAttribute("Books", Books);
        System.out.println(Books.get(0).getName());
        //request.setAttribute("test", test);
        url = ("/listBooks.jsp");
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }

}