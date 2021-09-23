<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="Impl.User"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%

HttpSession httpSession = request.getSession();
User hal = (User)httpSession.getAttribute("current-user");
System.out.println("----------------------------"+hal.getUserEmail());
if (!hal.getUserEmail().equals("bharatbhai"))
{
httpSession.setAttribute("message", "You are not allowed in");
response.sendRedirect("midlogin.jsp");
return;
}
else{
%>
<%
    Configuration con = new Configuration().configure().addAnnotatedClass(User.class);
    SessionFactory sf = con.buildSessionFactory();
    Session mysession = sf.openSession();
    Query qry = mysession.createQuery("from User p");
    //int uId = 1;
    //User user = (User) mysession.get(User.class, uId);
    //System.out.println(user);
    //mysession.close();
    List l =qry.list();
    System.out.println("Total Number Of Records : "+l.size());
    Iterator it = l.iterator();
    %>
    <table class="table">
    <thead>
        <tr>
            <th>Username</th>
            <th>College ID</th>
            <th>Phone</th>
        </tr>
    </thead>
    <tbody>
    <%
    while(it.hasNext())
    {
        Object o = (Object)it.next();
        User user = (User)o;
%>

        <tr>
            <td class="name-pr">
                <a>
                    <%=user.getUserName()%>
                </a>
            </td>
            <td class="name-pr">
                <a href="mailto:<%=user.getUserEmail()%>@ddu.ac.in">
                    <%=user.getUserEmail()%>
                </a>
            </td>
            <td class="name-pr">
                <a href="tel:<%=user.getUserPhone()%>">
                    <%=user.getUserPhone()%>
                </a>
            </td>
        </tr>
<!--klkl-->
    
<%
    }
%>
</tbody>
</table>
<%
    }
%>