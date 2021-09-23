package Sers;

import Impl.JustO;
import Impl.User;
import java.io.IOException;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import javax.net.ssl.HttpsURLConnection;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class CompmServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {
                HttpSession httpSession = request.getSession();
                JustO newO = (JustO) httpSession.getAttribute("marootodo");

                Configuration cone = new Configuration().configure().addAnnotatedClass(User.class);
                SessionFactory sf = cone.buildSessionFactory();
                Session session = sf.openSession();
                Transaction tx = session.beginTransaction();
                Query q = session.createQuery("update JustO set status=:n where ordid=:i");
                q.setParameter("n", 5);
                q.setParameter("i", newO.getOrdId());

                int status = q.executeUpdate();
                System.out.println(status);
//                Message section
                String message = " Hello Empty Stomach of " + newO.getUserName() + ", Your Order with ID = " + newO.getOrdId() + " is waiting, Please collect it.\nThankyou for using bunkORNER ;-)";
                String number = newO.getUserPhone();
                String apiKey = "178brnxh0MUt2DmlTGoPKJLEvaAYN9SW6";
                String sendId = "FSTSMS";
                //important step...
                message = URLEncoder.encode(message, "UTF-8");
                String language = "english";

                String route = "p";

                String myUrl = "https://www.fast2sms.com/dev/bulk?authorization=" + apiKey + "&sender_id=" + sendId + "&message=" + message + "&language=" + language + "&route=" + route + "&numbers=" + number;

                //sending get request using java..
                URL url = new URL(myUrl);

                HttpsURLConnection con = (HttpsURLConnection) url.openConnection();

                con.setRequestMethod("GET");

                con.setRequestProperty("User-Agent", "Mozilla/5.0");
                con.setRequestProperty("cache-control", "no-cache");
                System.out.println("Wait..............");

                int code = con.getResponseCode();

                System.out.println("Response code : " + code);

                StringBuffer responsehet = new StringBuffer();

                BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));

                while (true) {
                    String line = br.readLine();
                    if (line == null) {
                        break;
                    }
                    responsehet.append(line);
                }

                System.out.println(responsehet);
//                Message section ends

                response.sendRedirect("OrdDisp.jsp");
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
