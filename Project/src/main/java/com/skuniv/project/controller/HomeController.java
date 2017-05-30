package com.skuniv.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "code";
	}
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String java_code(Locale locale, Model model) {
		// 嗥錶還 jsp
		return "test";
	}
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat(Locale locale, Model model) {
		// 嗥錶還 jsp
		return "socket";
	}
	
	@RequestMapping(value = "/connect", method = RequestMethod.GET)
	public void connect(Locale locale, Model model) {
		System.out.println("in");
		new SocketHandler();
	}
	@RequestMapping(value = "/baekjoon", method = RequestMethod.GET)
	public String baekjoon(Locale locale, Model model) {
		// 嗥錶還 jsp
		return "baekjoon";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainDisplay(Locale locale, Model model) {
		// 嗥錶還 jsp
		return "main";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		// 嗥錶還 jsp
		return "login";
	}
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Locale locale, Model model) {
		// 嗥錶還 jsp
		return "form";
	}
	@RequestMapping(value = "/loginCheck", method = RequestMethod.GET)
	public ModelAndView loginCheck(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
		System.out.println("id : " + id  + " pwd : " +pwd);
		ModelAndView mv = new ModelAndView("jsonView");
		Map map = new HashMap<Object, Object>();
		map.put("id", id);
		map.put("password", pwd);
		List<Map<Object,Object>> list = new LinkedList<Map<Object,Object>>();
		list.add(map);
		mv.addObject("userList", list);
		return mv;
	}
}
