package fr.AAEniJavaEE.user.bo;

public class User {
	private String pseudo;
	private String motDePasse ;

	public User() {
		super();
	}

	public User(String pseudo, String motDePasse) {
		super();
		this.pseudo = pseudo;
		this.motDePasse = motDePasse;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setPwd(String motDePasse) {
		this.motDePasse = motDePasse;
	}

}
