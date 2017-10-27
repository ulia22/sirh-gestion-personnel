/**
 * 
 */
package dev.sgp.entite;

/**
 * @author ETY9
 *
 */
public class Departement {
	/** id : Integer */
	private Integer id;
	/** nom : String */
	private String nom;

	/**
	 * @param id
	 * @param nom
	 */
	public Departement(Integer id, String nom) {
		super();
		this.id = id;
		this.nom = nom;
	}
	/**
	 * Getter for id.
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * Setter for id
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * Getter for nom.
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}
	/**
	 * Setter for nom
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	} 

}
