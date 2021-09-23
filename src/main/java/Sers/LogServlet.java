package Sers;

import DAO.UserDao;
import Helper.FactoryProvider;
import Impl.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {

                String userEmail = request.getParameter("ename");
                String userPass = request.getParameter("pname");
                
                if(userEmail.equals("bharatbhai")&&userPass.equals("admin"))
                {
                    HttpSession httpSession = request.getSession();
                    User auser = new User("bb","bharatbhai","7878787878","admin");
                    httpSession.setAttribute("current-user", auser);
                    response.sendRedirect("bbacc.jsp");
                }
                else{
                UserDao userDao = new UserDao(FactoryProvider.getFactory());
                User user = userDao.getUserByEmailAndPassword(userEmail, userPass);
//                System.out.println(user);

                if (user == null) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Invalid credentials");
                    response.sendRedirect("midlogin.jsp");
                    return;
                } else {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("current-user", user);
                    httpSession.setAttribute("message", "" + user.getUserName());
                    response.sendRedirect("myacc.jsp");
                    return;
                }

            }} catch (Exception e) {
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

//public class RegServlet {
//    public static void main(String[] args) {
//        Configuration con = new Configuration().configure().addAnnotatedClass(Alien.class);
//        SessionFactory sf = con.buildSessionFactory();
//        Session session = sf.openSession();
//        int bookId = 102;
//        Alien book = (Alien) session.get(Alien.class, bookId);
//        System.out.println("Title: " + book.getAname());
//        System.out.println("Author: " + book.getColor());
//        session.close();
//}
