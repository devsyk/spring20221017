package org.zerock.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.board.MemberDto;
import org.zerock.mapper.board.MemberMapper;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;

	public int insert(MemberDto member) {
		
		return mapper.insert(member);
	}

	public List<MemberDto> list() {
		
		return mapper.selectAll();
	}

	public MemberDto getById(String id) {
		return mapper.selectById(id);
	}

	public int modify(MemberDto member) {
		int cnt = 0;
		
		try {
			return mapper.update(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
}
