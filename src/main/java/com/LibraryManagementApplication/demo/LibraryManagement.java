package com.LibraryManagementApplication.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.LibraryManagementApplication.model.Book;
import com.LibraryManagementApplication.model.LibraryItem;

@SpringBootApplication
public class LibraryManagement {

	public static void main(String[] args) {
		SpringApplication.run(LibraryManagement.class, args);
		LibraryItem book = new Book("The Alchemist", "Paulo Coelho", "123-4567890123", 5);
		System.out.println("Before Update:" + book);
		book.setTitle("The Alchemist: A Pocket Guide");
		System.out.println("After update: " + book);
	}
}
