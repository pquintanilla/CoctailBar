package fr.formation.model;

public class Menu {
	final private String title;
	final private String url;

	/***
	 * 
	 * @param title : titre du menu.
	 * @param url
	 */
	public Menu(final String title, final String url) {
		this.title = title;
		this.url = url;
	}

	/***
	 * 
	 * @return the tittle
	 */
	public String getTitle() {
		return title;
	}

	/***
	 * 
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

}
