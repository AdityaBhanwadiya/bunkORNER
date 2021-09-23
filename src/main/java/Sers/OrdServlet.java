package Sers;

import Impl.JustO;
import Impl.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class OrdServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {

                String userName = request.getParameter("respb");

//                out.println(userName);
//                out.println(userName.substring(0, 19));
                String a = userName.substring(0, userName.length() - 1);
                int i = Integer.parseInt(a);
                Configuration con = new Configuration().configure().addAnnotatedClass(JustO.class);
                SessionFactory sf = con.buildSessionFactory();
                Session mysession = sf.openSession();
                JustO user = (JustO) mysession.get(JustO.class, i);
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("marootodo", user);
                response.sendRedirect("Preping.jsp");
//                out.println(user);
                mysession.close();

                return;

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
