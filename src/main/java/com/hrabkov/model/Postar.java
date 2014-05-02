package com.hrabkov.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "POSTAR", catalog = "POSTA")
@SuppressWarnings("serial")
public class Postar implements Serializable {

	@Id
	@Column(name = "POSTAR_ID", unique = true, nullable = false)
	@GeneratedValue
	private Integer postarId;

	@Column(name = "POSTAR_NAME", nullable = false)
	private String name;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "postar", cascade = CascadeType.ALL)
	private List<PostovyList> letters;

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

	public List<PostovyList> getLetters() {
		return letters;
	}

	public void setLetters(List<PostovyList> letters) {
		this.letters = letters;
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
		Postar other = (Postar) obj;
		if (postarId == null) {
			if (other.postarId != null)
				return false;
		} else if (!postarId.equals(other.postarId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Postar [postarId=" + postarId + ", name=" + name + ", letters="
				+ letters + "]";
	}
}
