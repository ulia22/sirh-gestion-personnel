/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.util.Constantes;

/**
 * @author ETY9
 *
 */
@SuppressWarnings("serial")
public class EditerCollaborateursController extends HttpServlet{

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("id") == null){
			resp.sendError(400, "Pas d'id fournis.");
			return;
		}
		int id = Integer.parseInt(req.getParameter("id"));
		
		Collaborateur collab = null;
		for(int i = 0; i < Constantes.COLLAB_SERVICE.listerCollaborateurs().size(); i++){
			if(Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i).getId() == id){
				collab = Constantes.COLLAB_SERVICE.listerCollaborateurs().get(i);
			}
		}
		if(collab == null){
			resp.sendError(400, "Mauvais id.");
			return;
		}
		req.setAttribute("collab", collab);
		req.setAttribute("departements", Constantes.DEPART_SERVICE.listerDepartements());
		req.getRequestDispatcher("/WEB-INF/views/collab/editer.jsp").forward(req, resp);
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		req.getRequestDispatcher("/WEB-INF/views/collab/lister.jsp").forward(req, resp);
	}
}
