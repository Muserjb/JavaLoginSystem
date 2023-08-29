package servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.UserService;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    private UserService userService;

    public void init() {
        userService = new UserService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        System.out.println(username);
        if (userService.registerUser(username, password, email)) {
            // Registration successful
            HttpSession session = request.getSession();
            session.setAttribute("successMessage", "Registration successful! Please log in.");
            response.sendRedirect("login.jsp"); // Redirect to login page
        } else {
            // Registration failed
            request.setAttribute("errorMessage", "Registration failed. Username already exists.");
            request.getRequestDispatcher("registration.jsp").forward(request, response);
        }
    }
}
