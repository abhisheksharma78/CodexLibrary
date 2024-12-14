package com.LibraryManagementApplication.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.LibraryManagementApplication.model.Book;
import com.LibraryManagementApplication.model.LibraryItem;

@RestController
public class TestController {

    @GetMapping("test")
    public String TestOutcome() {
        LibraryItem book = new Book("The Alchemist", "Paulo Coelho", "123-4567890123", 5);
        System.out.println("Before Update:" + book);
        book.setTitle("The Alchemist: A Pocket Guide");
        System.out.println("After update: " + book);
        return book.toString();
    }
}
