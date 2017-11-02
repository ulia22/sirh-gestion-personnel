/**
 * 
 */
package dev.sgp.entite;

import java.time.Instant;
import java.util.Date;
import java.util.ResourceBundle;

import dev.sgp.util.Constantes;

/**
 * @author ETY9
 *
 */
public class Collaborateur {
	/** id : int */
	private int id;
	/** gender : String */
	private String gender;
	/** matricule : String */
	private String matricule; 
	/** nom : String */
	private String nom;
	/** prenom : String */
	private String prenom;
	/** dDN : Date */
	private Date dDN;
	/** adresse : String */
	private String adresse;
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
	
	/** intitulePoste : String */
	private String intitulePoste;
	/** departement : Departement */
	private Departement departement;
	
	/** banque : String */
	private String banque;
	/** iban : String */
	private String iban;
	/** bic : String */
	private String bic;
	/** telephone : String */
	private String telephone;
	
	private static Integer CollaboGlobalId = 0;
	
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
		this.gender = "Male";
		this.nom = nom;
		this.prenom = prenom;
		this.dDN = dDN;
		this.adresse = adresse;
		this.nSS = nSS;
		this.emailPro = this.nom +"."+ this.prenom +"@"+ResourceBundle.getBundle("application").getString("mailSuffixe");
		this.photo = "images/pdg.jpg";
		this.dateHeureCreation = Date.from(Instant.now());
		this.actif = true;
		this.departement = Constantes.DEPART_SERVICE.listerDepartements().get(0);
		this.intitulePoste = "Larbin !";
		this.iban = "";
		this.bic = "";
		this.telephone = "";
	}


	/**
	 * @param id
	 * @param gender
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
	 * @param intitulePoste
	 * @param departement
	 * @param banque
	 * @param iban
	 * @param bic
	 * @param telephone
	 */
	public Collaborateur(int id, String gender, String matricule, String nom, String prenom, Date dDN, String adresse,
			String nSS, String emailPro, String photo, Date dateHeureCreation, Boolean actif, String intitulePoste,
			Departement departement, String banque, String iban, String bic, String telephone) {
		super();
		this.id = id;
		this.gender = gender;
		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		this.dDN = dDN;
		this.adresse = adresse;
		this.nSS = nSS;
		this.emailPro = emailPro;
		this.photo = photo;
		this.dateHeureCreation = dateHeureCreation;
		this.actif = actif;
		this.intitulePoste = intitulePoste;
		this.departement = departement;
		this.banque = banque;
		this.iban = iban;
		this.bic = bic;
		this.telephone = telephone;
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
	 * Getter for adresse.
	 * @return the adresse
	 */
	public String getAdresse() {
		return adresse;
	}
	/**
	 * Setter for adresse
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
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

	/**
	 * Getter for intitulePoste.
	 * @return the intitulePoste
	 */
	public String getIntitulePoste() {
		return intitulePoste;
	}

	/**
	 * Setter for intitulePoste
	 * @param intitulePoste the intitulePoste to set
	 */
	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	/**
	 * Getter for departement.
	 * @return the departement
	 */
	public Departement getDepartement() {
		return departement;
	}

	/**
	 * Setter for departement
	 * @param departement the departement to set
	 */
	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	/**
	 * Getter for banque.
	 * @return the banque
	 */
	public String getBanque() {
		return banque;
	}

	/**
	 * Setter for banque
	 * @param banque the banque to set
	 */
	public void setBanque(String banque) {
		this.banque = banque;
	}

	/**
	 * Getter for iban.
	 * @return the iban
	 */
	public String getIban() {
		return iban;
	}

	/**
	 * Setter for iban
	 * @param iban the iban to set
	 */
	public void setIban(String iban) {
		this.iban = iban;
	}

	/**
	 * Getter for bic.
	 * @return the bic
	 */
	public String getBic() {
		return bic;
	}

	/**
	 * Setter for bic
	 * @param bic the bic to set
	 */
	public void setBic(String bic) {
		this.bic = bic;
	}

	/**
	 * Getter for gender.
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * Setter for gender
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * Getter for telephone.
	 * @return the telephone
	 */
	public String getTelephone() {
		return telephone;
	}

	/**
	 * Setter for telephone
	 * @param telephone the telephone to set
	 */
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	/**
	 * Getter for CollaboGlobalId.
	 * @return the collaboGlobalId
	 */
	public static Integer getCollaboGlobalId() {
		return CollaboGlobalId;
	}

	/**
	 * Setter for CollaboGlobalId
	 * @param collaboGlobalId the collaboGlobalId to set
	 */
	public static void setCollaboGlobalId(Integer collaboGlobalId) {
		CollaboGlobalId = collaboGlobalId;
	}
	
	
	
}
