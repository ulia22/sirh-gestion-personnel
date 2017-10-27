/**
 * 
 */
package dev.sgp.web;

import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
public class CreerNouveauCollaborateurController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/collab/nouveau.jsp").forward(req, resp);
	}
	
	@SuppressWarnings("deprecation")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		if(checkFormValidity(req.getParameterMap(), resp)){
			
			
			String ddn = req.getParameter("ddn");
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			Date dateNaissance=null;
			try {
				dateNaissance = formatter.parse(ddn);
			} catch (ParseException e) {
				resp.sendError(400, "La date n'est pas au format dd/MM/yyyy");
			}
			
			Collaborateur col = new Collaborateur(req.getParameter("nom"), req.getParameter("prenom"), dateNaissance, req.getParameter("addr"), req.getParameter("nss"));
			Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(col);
			req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		}
		
	}
	
	protected boolean checkFormValidity(Map<String, String[]> parametersMap, HttpServletResponse rep) throws IOException{
		StringBuilder erreur = new StringBuilder();
		if(parametersMap.get("nom") == null || 
				!Pattern.matches("[a-zA-Z]+", parametersMap.get("nom")[0])){
			erreur.append("<Nom> n'est pas renseigné\n");
		}
		if(parametersMap.get("prenom") == null || 
				!Pattern.matches("[a-zA-Z]+", parametersMap.get("prenom")[0])){
			erreur.append("<prenom> n'est pas renseigné\n");
		}
		if(parametersMap.get("ddn") == null || 
				!Pattern.matches("\\d{2}/\\d{2}/\\d{4}", parametersMap.get("ddn")[0])){
			erreur.append("<date de naissance> n'est pas renseigné\n");
		}
		if(parametersMap.get("addr") == null || 
				!Pattern.matches("[\\w\\s]+", parametersMap.get("addr")[0])){
			erreur.append("<Adresse> n'est pas renseigné\n");
		}
		if(parametersMap.get("nss") == null || 
				!Pattern.matches("(\\d){15}", parametersMap.get("nss")[0])){
			erreur.append("<Numéro de sécurité sociale> n'est pas renseigné\n");
		}
		if(erreur.toString().length() != 0){
			rep.sendError(400, erreur.toString());
			return false;
		}
		return true;
	}
}
