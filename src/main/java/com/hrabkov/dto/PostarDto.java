package com.hrabkov.dto;

import java.io.Serializable;
import java.util.List;

public class PostarDto implements Serializable {

	private Integer postarId;
	private String name;
	private List<ListDto> listy;

	public Integer getPostarId() {
		return postarId;
	}

	public void setPostarId(Integer postarId) {
		this.postarId = postarId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<ListDto> getListy() {
		return listy;
	}

	public void setListy(List<ListDto> listy) {
		this.listy = listy;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((postarId == null) ? 0 : postarId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PostarDto other = (PostarDto) obj;
		if (postarId == null) {
			if (other.postarId != null)
				return false;
		} else if (!postarId.equals(other.postarId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "PostarDto [postarId=" + postarId + ", name=" + name
				+ ", listy=" + listy + "]";
	}

}
