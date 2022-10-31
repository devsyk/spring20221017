package org.zerock.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.board.BoardDto;
import org.zerock.service.board.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("register")
	public void register() {
		// 게시물 작성 view로 포워드
		// /WEB-INF/views/board/register.jsp
	}
	
	@PostMapping("register")
	public String register(BoardDto board) {
		// request param 수집 가공
		
		// business logic - Service
		service.register(board);
		
		// /boar/list로 redirect
		return "redirect:/board/list";
		
	}
	
	@GetMapping("list")
	public void list(Model model) {
		// request param 수집 가공
		// business logic
		List<BoardDto> list = service.listBoard();
		// add attribute
		model.addAttribute("boardList", list);
		// forward
	}
	
	@GetMapping("get")
	public void get(int id, Model model) { // @RequestParam(name="id") 생략 가능
		// request param 수집 가공
		// business logic - 게시물 db에서 가져오기
		BoardDto board = service.get(id);
		System.out.println(board);
		// add attribute
		model.addAttribute("board", board);
		// forward/redirect
	}
	
	@GetMapping("modify")
	public void modify(int id, Model model) {
		BoardDto board = service.get(id);
		model.addAttribute("board", board);
	}
	
	@PostMapping("modify")
	public String modify(BoardDto board) {
		service.update(board);
		return "redirect:/board/list";
	}
	
	@PostMapping("remove")
	public String remove(int id) {
		service.remove(id);
		return "redirect:/board/list";
	}
}
