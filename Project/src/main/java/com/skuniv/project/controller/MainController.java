package com.skuniv.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skuniv.project.service.MainService;

@Controller
public class MainController {
	@Resource(name = "MainService")
	MainService service;
	
	@RequestMapping(value = "/roomList")
	public ModelAndView userList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectRoomList();
		mv.addObject("room_list", list);
		return mv;
	}
	
	@RequestMapping(value = "insertRoom")
	public ModelAndView insertRoom(HttpServletRequest request) throws Exception {
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String img = request.getParameter("img");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("content", content);
		map.put("img", img);
		
		service.insertRoom(map);
		
		ModelAndView mv = new ModelAndView("main");
		return mv;
	}
}
