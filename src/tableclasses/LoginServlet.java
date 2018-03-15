package tableclasses;

import com.auth0.NonceUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(final HttpServletRequest req, final HttpServletResponse res)
            throws ServletException, IOException {
        // add a Nonce value to session storage
        NonceUtils.addNonceToStorage(req);
        final String clientId = getServletContext().getInitParameter("auth0.client_id");
        final String clientDomain = getServletContext().getInitParameter("auth0.domain");
        req.setAttribute("clientId", clientId);
        req.setAttribute("clientDomain", clientDomain);
        req.getRequestDispatcher("/authlogin.jsp").forward(req, res);
    }

}