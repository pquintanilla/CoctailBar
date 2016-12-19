package fr.formation.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.stereotype.Repository;

import fr.formation.entity.Ingredient;

/*@Component
public class IngredientDao {
	public List<Ingredient> readAll() {
		return Arrays.asList(new Ingredient("Rhum", 0), new Ingredient("Tequila", 0), new Ingredient("Whisky", 0),
				new Ingredient("Ice cubes", 1), new Ingredient("Sugar", 1), new Ingredient("CO2", 2));
	}
}*/

@Repository
public interface IngredientDao extends JpaRepository<Ingredient, Integer>{
	
}