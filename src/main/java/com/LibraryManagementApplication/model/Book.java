package com.LibraryManagementApplication.model;

public class Book extends LibraryItem {

    private int copiesAvailable;

    public Book(String title, String author, String isbn, int copiesAvailable) {
        super(title, author, isbn);
        this.copiesAvailable = copiesAvailable;
    }

    public int getCopiesAvailable() {
        return copiesAvailable;
    }

    public void setCopiesAvailable(int copiesAvailable) {
        this.copiesAvailable = copiesAvailable;
    }

    public String toString() {
        return "Book {" + "title='" + getTitle() + "\'" +
                ", author='" + getAuthor() + '\'' +
                ", isbn='" + getIsbn() + '\'' +
                ", copiesAvailable=" + copiesAvailable +
                '}';
    }

    @Override
    public void displayDetails() {
        System.out.println("Title: " + getTitle());
        System.out.println("Author: " + getAuthor());
        System.out.println("ISBN: " + getIsbn());
        System.out.println("Copies Available: " + copiesAvailable);
    }
}
