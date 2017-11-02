/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

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
		List<Collaborateur> collaborateurs = Constantes.COLLAB_SERVICE.listerCollaborateurs();

		try{
			Optional<Collaborateur> colab = collaborateurs
					.stream()
					.filter(c -> c.getId() == Integer.parseInt(req.getParameter("collabId")))
					.findFirst();
			if(!colab.isPresent()){
				throw new Exception();
			}
			if(req.getParameter("selectGender") != null){
				colab.get().setGender(req.getParameter("selectGender"));
			}
			if(req.getParameter("inputAddr") != null){
				colab.get().setAdresse(req.getParameter("inputAddr"));
			}
			if(req.getParameter("inputTel") != null){
				colab.get().setTelephone(req.getParameter("inputTel"));
			}
			if(req.getParameter("selectDep") != null){
				colab.get().setDepartement( Constantes.DEPART_SERVICE.listerDepartements().stream().filter(d -> d.getNom().equals(req.getParameter("selectDep"))).findFirst().orElse(Constantes.DEPART_SERVICE.listerDepartements().get(0)));
			}
			if(req.getParameter("inputNomPoste") != null){
				colab.get().setIntitulePoste(req.getParameter("inputNomPoste"));
			}
			if(req.getParameter("inputIBAN") != null){
				colab.get().setIban(req.getParameter("inputIBAN"));
			}
			if(req.getParameter("inputBIC") != null){
				colab.get().setBic(req.getParameter("inputBIC"));
			}
		}catch(Exception n){}
		finally{
			req.setAttribute("departements", Constantes.DEPART_SERVICE.listerDepartements());	
			req.setAttribute("collaborateurs", collaborateurs);
			req.getRequestDispatcher("/WEB-INF/views/collab/lister.jsp").forward(req, resp);
		}
	}



}
