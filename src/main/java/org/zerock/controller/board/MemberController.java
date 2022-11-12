package org.zerock.controller.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.board.MemberDto;
import org.zerock.service.board.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("signup")
	public void signup() {
		
	}
	
	@PostMapping("signup")
	public String signup(MemberDto member, RedirectAttributes rttr) {
		System.out.println(member);
		
		int cnt = service.insert(member);
		
		// 가입 성공
		rttr.addFlashAttribute("message", "회원가입 되었습니다.");
		return "redirect:/board/list";
	}
	
	@GetMapping("list")
	public void list(Model model) {
		model.addAttribute("memberList", service.list());
	}
	
	@GetMapping({"info", "modify"})
	public void info(String id, Model model) {
		model.addAttribute("member", service.getById(id));
	}
	
	@PostMapping("modify")
	public String modify(MemberDto member, RedirectAttributes rttr) {
		int cnt = service.modify(member);
		
		rttr.addAttribute("id", member.getId());
		if (cnt == 1) {
			rttr.addFlashAttribute("message", "회원 정보가 수정되었습니다.");
			return "redirect:/member/info";
		} else {
			rttr.addFlashAttribute("message", "회원 정보가 수정되지 않았습니다.");
			return "redirect:/member/modify";
		}
	}
	
	@PostMapping("remove")
	public String remove(String id, RedirectAttributes rttr) {
		int cnt = service.remove(id);
		
		rttr.addAttribute("message", "회원 탈퇴하였습니다.");
		return "redirect:/board/list";
	}
}
