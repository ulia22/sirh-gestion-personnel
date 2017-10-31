/**
 * 
 */
package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Collaborateur;

/**
 * @author ETY9
 *
 */
public class CollaborateurService {
	/** listeCollaborateurs : List<Collaborateur> */
	List<Collaborateur> listeCollaborateurs = new ArrayList<>();
	/**
	 * @return
	 */
	public List<Collaborateur> listerCollaborateurs() {
		return listeCollaborateurs;
	}
	/**
	 * @param collab
	 */
	public void sauvegarderCollaborateur(Collaborateur collab) {
		listeCollaborateurs.add(collab);
	}
}
