package org.zerock.mapper.board;

import java.util.List;

import org.zerock.domain.board.MemberDto;

public interface MemberMapper {
	
	int insert(MemberDto member);

	List<MemberDto> selectAll();

	MemberDto selectById(String id);

	int update(MemberDto member);

	int deleteById(String id);
}
