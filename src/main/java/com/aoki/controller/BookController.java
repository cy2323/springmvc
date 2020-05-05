package com.aoki.controller;

import com.aoki.entity.Book;
import com.aoki.service.BookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BookService bookService;

	/**************************************************************************************************/

	/**
	 * 将数据显示到UI层的几种方式
	 * 		1，通过ModelAndView---需要使用视图解析器
	 * 				ModelAndView mv = new ModelAndView()
	 * 				mv.addObject("msg","hello world");
	 * 				mv.setViewName("hello");  // hello代表视图名称“hello.jsp"
	 * 				return mv;
	 * 		2, 通过ModelMap来实现---不需要视图解析器
	 * 				// ModelMap需要作为参数
	 *				public String hello(@RequestParam("uname")String name,ModelMap model){
	 *					// 相当于request.setAttribute("name",name);
	 * 					model.addAttribute("name",name);
	 * 					return "index.jsp";
	 *        		}
	 * 上述1和2的总结：
	 * 	相同点：	都能将数据封装显示到表示层页面中
	 * 	不同点：	ModelAndView可以指定跳转的视图，而ModelMap不能
	 * 			ModelAndView需要视图解析器，而ModelMap不需要
	 */
	@RequestMapping("/hello")
	public String hello(@RequestParam("uname")String name,ModelMap model){
		// 相当于request.setAttribute("name",name);
		model.addAttribute("name",name);
		return "index.jsp";
	}


	/************乱码及Resuful风格***********************************************************************/
	/**
	 * 	1，乱码解决---通过filter解决【web.xml】
	 * 		--- 参照web.xml的filter的配置
	 * 			但是上述方式只能解决post请求的乱码问题
	 * 			如果需要解决get方式的话；
	 * 				1，修改Tomcat的编码配置
	 * 				2，自定义乱码过滤器
	 * 	2，Resuful风格
	 * 		--- /{bookId}/delete和@PathVariable("bookId") Long bookId的搭配使用
	 * 		@RequestMapping(value = "/{bookId}/delete", method = RequestMethod.GET)
	 * 		private String delBook(@PathVariable("bookId") Long bookId){
	 *
	 * 			if(bookService.delBook(bookId) == 1) {
	 * 				return "redirect:/book/list";
	 *           }
	 * 			return null;
	 * 		}
	 */
	/**************************************************************************************************/

	/**
	 *	查询出100以内的所有book记录
	 * @param model
	 * @return String
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String list(Model model) {
		List<Book> list = bookService.getList();
		model.addAttribute("list", list);
		return "list";					// WEB-INF/jsp/"list".jsp
	}

	@RequestMapping(value = "/{bookId}/delete", method = RequestMethod.GET)
	private String delBook(@PathVariable("bookId") Long bookId){

		if(bookService.delBook(bookId) == 1) {
			return "redirect:/book/list";
		}
		return null;
	}

}
