package com.hrabkov.assembler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.hrabkov.dto.ListDto;
import com.hrabkov.model.Postar;
import com.hrabkov.model.PostovyList;

@Component
public class ListAssembler {

	List<ListDto> extractFromDomain(Postar domain) {
		
		List<ListDto> listy = new ArrayList<ListDto>();
		if (domain != null && domain.getLetters() != null) {
			
			for (final PostovyList list : domain.getLetters()) {
				final ListDto dto = new ListDto();
				dto.setListId(list.getListId());
				dto.setAddress(list.getAddress());
				listy.add(dto);
			}
		}
		return listy;
	}
}
