package com.hrabkov.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "LIST", catalog = "POSTA")
@SuppressWarnings("serial")
public class PostovyList implements Serializable {

	@Id
	@GeneratedValue
	@Column(name = "LIST_ID", unique = true, nullable = false)
	private Integer listId;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "POSTAR_ID", nullable = false)
	private Postar postar;

	@Column(name = "ADDRESS", unique = true, nullable = false)
	private String address;

	public Integer getListId() {
		return listId;
	}

	public void setListId(Integer listId) {
		this.listId = listId;
	}

	public Postar getPostar() {
		return postar;
	}

	public void setPostar(Postar postar) {
		this.postar = postar;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((listId == null) ? 0 : listId.hashCode());
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
		PostovyList other = (PostovyList) obj;
		if (listId == null) {
			if (other.listId != null)
				return false;
		} else if (!listId.equals(other.listId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "PostovyList [listId=" + listId + ", postar=" + postar.getPostarId()
				+ ", address=" + address + "]";
	}
}
