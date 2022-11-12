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

}
