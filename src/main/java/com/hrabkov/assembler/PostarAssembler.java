package com.hrabkov.assembler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hrabkov.dto.ListDto;
import com.hrabkov.dto.PostarDto;
import com.hrabkov.model.Postar;

@Component
public class PostarAssembler {

	@Autowired
	private ListAssembler listAssembler;
	
	public PostarDto extractFromDomain(Postar domain) {
		
		PostarDto dto = null;
		if (domain != null) {
			dto = new PostarDto();
			dto.setName(domain.getName());
			dto.setPostarId(domain.getPostarId());
			
			final List<ListDto> listDtos = listAssembler.extractFromDomain(domain);
			dto.setListy(listDtos);
		}
		return dto;
	}
	
}
