/**

 * 
 */
package fr.formation.entity;

import java.io.Serializable;

import javax.persistence.Column;

/**
 * @author Patrice QUINTANILLA
 *
 */
public class Cocktail implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String name;
	
	@Column(precision=10,scale=2)
	private double price;
	private int isAlcohol;

	public Cocktail() {
	};
	
	public Cocktail(String name, double price, int isAlcohol) {
		this.name = name;
		this.price = price;
		this.isAlcohol = isAlcohol;
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
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}

	/**
	 * @return the isAlcohol
	 */
	public int getIsAlcohol() {
		return isAlcohol;
	}

	/**
	 * @param isAlcohol the isAlcohol to set
	 */
	public void setIsAlcohol(int isAlcohol) {
		this.isAlcohol = isAlcohol;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
