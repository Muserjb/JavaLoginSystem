package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter("/dashboard.jsp")
public class SessionFilter implements Filter {
	
    public void init(FilterConfig fConfig) throws ServletException {
    	
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession(false);

        if (session != null && session.getAttribute("username") != null) {
            chain.doFilter(request, response);
        } else {
            // Redirect to login page if not logged in
        	session.setAttribute("errorMessage", "Unauthorized access. Please login.");
            httpRequest.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    public void destroy() {
    }
}
