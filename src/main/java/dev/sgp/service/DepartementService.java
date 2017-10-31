/**
 * 
 */
package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Departement;

/**
 * @author ETY9
 *
 */
/**
 * @author ETY9
 *
 */
public class DepartementService {
	/** listeDepartements : List<Departement> */
	List<Departement> listeDepartements = new ArrayList<>();
	
	/**
	 * 
	 */
	public DepartementService(){
		sauvegarderDepartement(new Departement(1,"Comptabilité"));
		sauvegarderDepartement(new Departement(2,"Ressources Humaines"));
		sauvegarderDepartement(new Departement(3,"Informatique"));
		sauvegarderDepartement(new Departement(4,"Administratif"));
	}
	
	/**
	 * @return
	 */
	public List<Departement> listerDepartements() {
		return listeDepartements;
	}
	/**
	 * @param depart
	 */
	public void sauvegarderDepartement(Departement depart) {
		listeDepartements.add(depart);
	}
	
	/**
	 * @param srv
	 * @return
	 */
	public boolean isDepartementService(String srv){
		if(this.listeDepartements != null){
			return this.listeDepartements
			.stream()
			.anyMatch(d->d.getNom().equals(srv));
		}
		return false;
	}
}
