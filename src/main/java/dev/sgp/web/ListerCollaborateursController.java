/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

/**
 * @author ETY9
 *
 */
@SuppressWarnings("serial")
public class ListerCollaborateursController extends HttpServlet {

	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		//Est-ce qu'on veut afficher les inactifs?
		if(req.getParameter("checkBoxCollaboDesact") == null
				|| !req.getParameter("checkBoxCollaboDesact").equals("on")){
			//On n'affiche pas les inactifs
			collaborateurs = collaborateurs
					.stream()
					.filter(Collaborateur::getActif)
					.collect(Collectors.toList());
			req.setAttribute("checkBoxCollaboDesact", "");
		}else{
			req.setAttribute("checkBoxCollaboDesact", "on");
		}
		
		//On affiche si le nom/prenom commence par text
		if(req.getParameter("rechercheByName") != null
				&& req.getParameter("rechercheByName").length()>0){
			//On n'affiche que les collaborateur ou le nom/prenom commence par recherchebyname
			collaborateurs = collaborateurs
					.stream()
					.filter(c->c.getNom().toLowerCase().startsWith(req.getParameter("rechercheByName").toLowerCase())
							|| c.getPrenom().toLowerCase().startsWith(req.getParameter("rechercheByName").toLowerCase()))
					.collect(Collectors.toList());
			req.setAttribute("rechercheByName", req.getParameter("rechercheByName"));
		}else{
			req.setAttribute("rechercheByName", "");
		}
		
		
		//On filtre suivant le département
		if(req.getParameter("departementFilter") != null
				&& Constantes.DEPART_SERVICE.isDepartementService(req.getParameter("departementFilter"))){
			collaborateurs = collaborateurs
					.stream()
					.filter(c->c.getDepartement().getNom().equals(req.getParameter("departementFilter")))
					.collect(Collectors.toList());
			req.setAttribute("departementFilter", req.getParameter("departementFilter"));
		}else{
			req.setAttribute("departementFilter", "Tous");
		}
		
		
		req.setAttribute("departements", Constantes.DEPART_SERVICE.listerDepartements());	
		req.setAttribute("collaborateurs", collaborateurs);
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		req.setAttribute("departements", Constantes.DEPART_SERVICE.listerDepartements());	
		req.setAttribute("collaborateurs", collaborateurs);
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
	}
}
