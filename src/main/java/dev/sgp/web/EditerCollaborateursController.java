/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		if(req.getParameter("matricule") == null){
			resp.setStatus(400);
			resp.getWriter().write("<p>Un matricule est attendu.</p>");
		}else{
			resp.setStatus(200);
			resp.getWriter().write("<h1>Edition de collaborateur.</h1><br/>"
					+ "Matricule :"+req.getParameter("matricule")+"<br/>");
		}	
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StringBuilder repError = new StringBuilder();
		repError.append("Les parametre manquants sont : ");
		if(req.getParameter("matricule") == null){
			repError.append("matricule ");
		}
		if(req.getParameter("titre") == null){
			repError.append("titre ");
		}
		if(req.getParameter("nom") == null){
			repError.append("nom ");
		}
		if(req.getParameter("prenom") == null){
			repError.append("prenom ");
		}
		
		if(!repError.toString().equals("Les parametre manquants sont : ")){
			resp.sendError(400, repError.toString());
			return;
		}
		resp.setStatus(201);
		StringBuilder repOK = new StringBuilder();
		repOK.append("<p>Creation d’un collaborateur avec les informations suivantes :</p><br/><ul><li>");
		repOK.append("matricule=");
		repOK.append(req.getParameter("matricule"));
		repOK.append(", titre=");
		repOK.append(req.getParameter("titre"));
		repOK.append(", nom=");
		repOK.append(req.getParameter("nom"));
		repOK.append(", prenom=");
		repOK.append(req.getParameter("prenom"));
		repOK.append("</li></ul>");
		resp.getWriter().write(repOK.toString());
			
		
	}
}
