package com.aoki.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
// MyBatis要求:
// 如果需要开启二级缓存的话，返回的JavaBean对象必须是序列化的，即要求实现Serializable接口
public class Book implements Serializable {

	private long bookId;
	private String name;
	private int number;

	/**
	 * @Data
	 * @NoArgsConstructor
	 * @AllArgsConstructor
	 * @ToString
	 *
	 * 	以上四个lombok提供的注解：
	 * 		优点：可以完全替代以下所有的代码，减少代码量，提升开发效率
	 * 		缺点：需要捆绑整个team安装
	 * 		权衡利弊
	 *
	 */

//	public Book() {
//	}
//
//	public Book(long bookId, String name, int number) {
//		this.bookId = bookId;
//		this.name = name;
//		this.number = number;
//	}

//	public long getBookId() {
//		return bookId;
//	}
//
//	public void setBookId(long bookId) {
//		this.bookId = bookId;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public int getNumber() {
//		return number;
//	}
//
//	public void setNumber(int number) {
//		this.number = number;
//	}

//	@Override
//	public String toString() {
//		return "Book [bookId=" + bookId + ", name=" + name + ", number=" + number + "]";
//	}


}
