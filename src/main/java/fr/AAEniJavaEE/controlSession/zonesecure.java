package fr.AAEniJavaEE.controlSession;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.AAEniJavaEE.user.bo.User;

/**
 * Servlet implementation class zonesecure
 */
@WebServlet("/zonesecure")
public class zonesecure extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public zonesecure() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		traitement(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		traitement(request,response);
	}
	
	protected void traitement(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	// Etape 1 : Récupération des paramètres de la requête
	
	String pseudo = request.getParameter("pseudo");
	String motDePasse = request.getParameter("motDePasse");
	
	// Etape 2 : Soumettre les paramètres de la requête à la couche service et récupérer résultat
	
	User user = new User(pseudo, motDePasse);	
	HttpSession maSession = request.getSession();		
	maSession.setAttribute("utilisateur", user);
	
	// UserService userService = new UserService();
	// boolean userValid = userService.verifUser (user) ;
	// maSession.setAttribute("validUser", userValid);
	
	// Etape 3 : Réponse à l'utilisateur
	RequestDispatcher   dispatcher = request.getRequestDispatcher("resultatLogin.jsp");
	dispatcher.forward(request, response);
	
	}

}
