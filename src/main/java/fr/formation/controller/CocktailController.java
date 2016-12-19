package fr.formation.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.entity.Cocktail;
import fr.formation.service.CocktailService;

@Controller
@RequestMapping("/cocktails")
public class CocktailController {

	@Autowired
	private CocktailService service;
	@RequestMapping
	public ModelAndView list() {
		final ModelAndView mav = new ModelAndView();
		mav.setViewName("cocktails");
		mav.addObject("cocktails", this.service.getAll());
		return mav;
	}
	
/*	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String newCocktail(final HttpServletRequest request) {
		
		final String name = request.getParameter("name");
		final float price = Float.parseFloat(request.getParameter("price"));		
		final Integer isAlcohol = Integer.parseInt(request.getParameter("isAlcohol"));
		this.service.create(new Cocktail(name, price, isAlcohol));
		return "redirect:/cocktails/add.html";
	};*/
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String newCocktail(@RequestParam final String name, @RequestParam final double price, final int isAlcohol) {
		this.service.create(new Cocktail(name, price, isAlcohol));
		return "redirect:/cocktails/add.html";
	};
	
	@RequestMapping("/add")
	public ModelAndView add() {
		final ModelAndView mav = new ModelAndView();
		mav.setViewName("addCocktail");
		return mav;
	}
}
