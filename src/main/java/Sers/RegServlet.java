package Sers;

import Impl.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class RegServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {

                HttpSession httpSession = request.getSession();
                
                String userotp = request.getParameter("otpname");
                int uotp=Integer.parseInt(userotp);
                
                int myotp = (int) httpSession.getAttribute("otpp");
                
                User newU = (User) httpSession.getAttribute("loginuser");
                
                if(uotp==myotp)
                {
                    Configuration con = new Configuration().configure().addAnnotatedClass(User.class);
                SessionFactory sf = con.buildSessionFactory();
                    Session session = sf.openSession();
                    Transaction tx = session.beginTransaction();

                    session.save(newU);

                    tx.commit();
                    session.close();

                    httpSession.setAttribute("message", "You are successfully registered, " + newU.getUserEmail());
                    response.sendRedirect("midlogin.jsp");
                }
                else
                {
                    httpSession.setAttribute("message", "Please Re-check the OTP and Enter Again");
                    response.sendRedirect("otpvalid.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
