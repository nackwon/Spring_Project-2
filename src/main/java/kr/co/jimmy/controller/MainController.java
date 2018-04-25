package kr.co.jimmy.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.jimmy.DAO.GuestDAO;
import kr.co.jimmy.VO.GuestVO;

@Controller
public class MainController {

	@Autowired
	private GuestDAO dao;

	@RequestMapping(value = "/listform", method = RequestMethod.GET)
	public String main(Model model) {
		System.out.println("list");
		ArrayList<GuestVO> list = (ArrayList<GuestVO>) dao.GuestList();
		model.addAttribute("list", list);
		return "/WEB-INF/views/list.jsp";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute GuestVO vo) {
		System.out.println("write");
		dao.GuestWrite(vo);
		return "redirect:/listform";
	}

	@RequestMapping(value = "/deleteform", method = RequestMethod.GET)
	public String deleteform() {
		System.out.println("deleteform");
		return "/WEB-INF/views/deleteform.jsp";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("password") String password, @RequestParam("no") String no) {
		System.out.println("delete");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("no", no);
		map.put("password", password);
		
		dao.GuestDelete(map);
		return "redirect:/listform";
	}
}
