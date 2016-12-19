package fr.formation.entity;

import java.io.Serializable;

public class Ingredient implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	
	private int etat;
	
	private String name;
	
	public Ingredient() {
		
	}
	public Ingredient(final String name, final int etat){
		this.name = name;
		this.etat = etat;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the etat
	 */
	public int getEtat() {
		return etat;
	}

	/**
	 * @param etat the etat to set
	 */
	public void setEtat(int etat) {
		this.etat = etat;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
