/**
 * 
 */
package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;

/**
 * @author ETY9
 *
 */
public class DepartementService {
	List<Departement> listeDepartements = new ArrayList<>();
	
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
}
