package com.aoki.service;

import com.aoki.entity.Book;

import java.util.List;

public interface BookService {

	List<Book> getList();

	int delBook(long bookId);

}
