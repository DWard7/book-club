package com.dustin.bookclub.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dustin.bookclub.models.Book;
import com.dustin.bookclub.services.BookService;

@Controller
public class BookController {

  @Autowired BookService bookService;

  //! Create Book
  @GetMapping("/books/new")
  public String newBook(@ModelAttribute("book") Book book) {
    return "books/new.jsp";
  }
  
  @PostMapping("/books")
  public String createBook(@ModelAttribute("book")Book book){
    bookService.addBook(book);
    return "redirect:/books";
  }

  //! Read All
  @GetMapping("/books")
  public String allBooks(Model model) {
    model.addAttribute("books", bookService.getAll());
    return "books/index.jsp";
  }

  //!Read One
  @GetMapping("/books/{id}")
  public String show(@PathVariable("id")Long id, Model model){
    Book book = bookService.getOne(id);
    model.addAttribute("book", book);
    return "books/show.jsp";
  }
}
