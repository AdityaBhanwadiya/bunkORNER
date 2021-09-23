package Sers;

import DAO.UserDao;
import Helper.FactoryProvider;
import Impl.JustO;
import Impl.User;
import java.io.IOException;
import java.io.PrintWriter;
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

public class CoutServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {

                HttpSession httpSession = request.getSession();
                User kal = (User) httpSession.getAttribute("current-user");
                if (kal == null) {
                    httpSession.setAttribute("message", "You are not logged in");
                    response.sendRedirect("midlogin.jsp");
                    return;
                }
                JustO jj = new JustO();
                jj.setUserName(kal.getUserName());
                jj.setUserPhone(kal.getUserPhone());
                String naam = "pap";
                for (int i = 1; i <= 16; i++) {

                    String user = request.getParameter(naam + i);
                    if (user != null) {
                        if(i==1)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF1(it);
                        }
                        else if(i==2)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF2(it);
                        }
                        else if(i==3)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF3(it);
                        }
                        else if(i==4)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF4(it);
                        }
                        else if(i==5)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF5(it);
                        }
                        else if(i==6)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF6(it);
                        }
                        else if(i==7)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF7(it);
                        }
                        else if(i==8)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF8(it);
                        }
                        else if(i==9)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF9(it);
                        }
                        else if(i==10)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF10(it);
                        }
                        else if(i==11)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF11(it);
                        }
                        else if(i==12)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF12(it);
                        }
                        else if(i==13)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF13(it);
                        }
                        else if(i==14)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF14(it);
                        }
                        else if(i==15)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF15(it);
                        }
                        else if(i==16)
                        {
                            int it=Integer.parseInt(user);  
                            jj.setF16(it);
                        }
                    }
                }
                jj.setOdate(new Date());
                System.out.println(jj);
                
                Configuration con = new Configuration().configure().addAnnotatedClass(JustO.class);
                SessionFactory sf = con.buildSessionFactory();
                Session session = sf.openSession();
                Transaction tx = session.beginTransaction();

                session.save(jj);

                tx.commit();
                session.close();
                
                httpSession.setAttribute("maroo", jj);
                response.sendRedirect("CompOrd.jsp");
                

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
