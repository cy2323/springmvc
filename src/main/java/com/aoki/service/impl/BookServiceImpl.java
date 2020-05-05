package com.aoki.service.impl;

import com.aoki.entity.Book;
import com.aoki.mapper.BookMapper;
import com.aoki.service.BookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BookMapper bookMapper;

	@Override
	public List<Book> getList() {
		return bookMapper.queryAll(0, 1000);
	}

	@Override
	public int delBook(long bookId) {
		return bookMapper.delBook(bookId);
	}

}
