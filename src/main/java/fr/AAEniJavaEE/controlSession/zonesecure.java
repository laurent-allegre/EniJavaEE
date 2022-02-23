package fr.AAEniJavaEE.controlSession;

import java.io.IOException;
import java.io.PrintWriter;

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
    }	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
    	PrintWriter out = response.getWriter();
 
    	//get parameters from request object.
    	String userName = request.getParameter("pseudo").trim();
    	String password = request.getParameter("motDePasse").trim();
 
    	//check for null and empty values.
    	if(userName == null || userName.equals("") || 
    			password == null || password.equals("")){
    		out.print("Please enter both username " +
    				"and password. <br/><br/>");
    		RequestDispatcher requestDispatcher = 
    			request.getRequestDispatcher("/login.html");
    		requestDispatcher.include(request, response);
    	}//Check for valid username and password.
    	else if(userName.equals("admin") && password.equals("123")){
    		HttpSession session=request.getSession();  
                session.setAttribute("userName",userName);  
                session.setAttribute("password",password);
 //   		out.println("Logged in successfully.<br/>"); 
 //   		out.println("Click on the below link to see " +
 //   			"the values of Username and Password.<br/>");
 //   		out.println("<a href='DisplaySessionValueServlet'>" +
 //   				"Click here</a>");
 //   	    out.close();
                response.sendRedirect("DisplaySessionValueServlet");  
                
    	}else{
    		out.print("Wrong username or password. <br/><br/>");
    		RequestDispatcher requestDispatcher =request.getRequestDispatcher("/login.html");
    		requestDispatcher.include(request, response);
    	}
	}
	
	

}
