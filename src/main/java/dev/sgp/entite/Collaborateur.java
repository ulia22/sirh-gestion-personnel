/**
 * 
 */
package dev.sgp.entite;

import java.time.Instant;
import java.util.Date;
import java.util.ResourceBundle;

/**
 * @author ETY9
 *
 */
public class Collaborateur {
	/** id : int */
	private int id;
	/** matricule : String */
	private String matricule; 
	/** nom : String */
	private String nom;
	/** prenom : String */
	private String prenom;
	/** dDN : Date */
	private Date dDN;
	/** Adresse : String */
	private String Adresse;
	/** nSS : String */
	private String nSS;
	/** emailPro : String */
	private String emailPro;
	/** photo : String */
	private String photo;
	/** dateHeureCreation : Date */
	private Date dateHeureCreation ;
	/** actif : Boolean */
	private Boolean actif;
	
	private Integer CollaboGlobalId = 0;
	
	/**
	 * 
	 */
	public Collaborateur(){
	}
	
	/**
	 * @param nom
	 * @param prenom
	 * @param dDN
	 * @param adresse
	 * @param nSS
	 * @param emailPro
	 * @param photo
	 * @param dateHeureCreation
	 * @param actif
	 */
	public Collaborateur(String nom, String prenom, Date dDN, String adresse, String nSS) {
		super();
		this.id = CollaboGlobalId++;
		this.matricule = nom.subSequence(0, 1) +""+ this.id;
		this.nom = nom;
		this.prenom = prenom;
		this.dDN = dDN;
		this.Adresse = adresse;
		this.nSS = nSS;
		this.emailPro = this.nom + this.prenom +"@"+ResourceBundle.getBundle("application").getString("mailSuffixe");
		this.photo = "images/pdg.jpg";
		this.dateHeureCreation = Date.from(Instant.now());
		this.actif = true;
	}
	
	/**
	 * @param id
	 * @param matricule
	 * @param nom
	 * @param prenom
	 * @param dDN
	 * @param adresse
	 * @param nSS
	 * @param emailPro
	 * @param photo
	 * @param dateHeureCreation
	 * @param actif
	 */
	public Collaborateur(int id, String matricule, String nom, String prenom, Date dDN, String adresse, String nSS,
			String emailPro, String photo, Date dateHeureCreation, Boolean actif) {
		super();
		this.id = id;
		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		this.dDN = dDN;
		this.Adresse = adresse;
		this.nSS = nSS;
		this.emailPro = emailPro;
		this.photo = photo;
		this.dateHeureCreation = dateHeureCreation;
		this.actif = actif;
	}
	/**
	 * Getter for id.
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * Setter for id
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * Getter for matricule.
	 * @return the matricule
	 */
	public String getMatricule() {
		return matricule;
	}
	/**
	 * Setter for matricule
	 * @param matricule the matricule to set
	 */
	public void setMatricule(String matricule) {
		this.matricule = matricule;
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
	/**
	 * Getter for prenom.
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}
	/**
	 * Setter for prenom
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	/**
	 * Getter for dDN.
	 * @return the dDN
	 */
	public Date getdDN() {
		return dDN;
	}
	/**
	 * Setter for dDN
	 * @param dDN the dDN to set
	 */
	public void setdDN(Date dDN) {
		this.dDN = dDN;
	}
	/**
	 * Getter for Adresse.
	 * @return the adresse
	 */
	public String getAdresse() {
		return Adresse;
	}
	/**
	 * Setter for Adresse
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		Adresse = adresse;
	}
	/**
	 * Getter for nSS.
	 * @return the nSS
	 */
	public String getnSS() {
		return nSS;
	}
	/**
	 * Setter for nSS
	 * @param nSS the nSS to set
	 */
	public void setnSS(String nSS) {
		this.nSS = nSS;
	}
	/**
	 * Getter for emailPro.
	 * @return the emailPro
	 */
	public String getEmailPro() {
		return emailPro;
	}
	/**
	 * Setter for emailPro
	 * @param emailPro the emailPro to set
	 */
	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}
	/**
	 * Getter for photo.
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}
	/**
	 * Setter for photo
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	/**
	 * Getter for dateHeureCreation.
	 * @return the dateHeureCreation
	 */
	public Date getDateHeureCreation() {
		return dateHeureCreation;
	}
	/**
	 * Setter for dateHeureCreation
	 * @param dateHeureCreation the dateHeureCreation to set
	 */
	public void setDateHeureCreation(Date dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}
	/**
	 * Getter for actif.
	 * @return the actif
	 */
	public Boolean getActif() {
		return actif;
	}
	/**
	 * Setter for actif
	 * @param actif the actif to set
	 */
	public void setActif(Boolean actif) {
		this.actif = actif;
	}
	
	
	
}
