<%@page import="Impl.JustO"%>
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
    User hal = (User) httpSession.getAttribute("current-user");
    System.out.println("----------------------------" + hal.getUserEmail());
    if (!hal.getUserEmail().equals("bharatbhai")) {
        httpSession.setAttribute("message", "You are not allowed in");
        response.sendRedirect("midlogin.jsp");
        return;
    } else {
%>
<%
    Configuration con = new Configuration().configure().addAnnotatedClass(JustO.class);
    SessionFactory sf = con.buildSessionFactory();
    Session mysession = sf.openSession();
    Query qry = mysession.createQuery("from JustO p where p.status=0");
    //int uId = 1;
    //User user = (User) mysession.get(User.class, uId);
    //System.out.println(user);
    //mysession.close();
    List l = qry.list();
    System.out.println("Total Number Of Records : " + l.size());
    Iterator it = l.iterator();
%>
<%
    while (it.hasNext()) {
        Object o = (Object) it.next();
        JustO jet = (JustO) o;
%>
<form id="form1" action="midord">
    <table class="table">
        <thead>
            <tr>
                <th>Date/Time</th>
                <th>Username</th>
                <th>Phone</th>
                    <%if (jet.getF1() != 0) {%>
                <th>Aloo Parotha</th>
                    <%}%>
                    <%if (jet.getF2() != 0) {%>
                <th>Upma</th>
                    <%}%>
                    <%if (jet.getF3() != 0) {%>
                <th>Masala Dosa</th>
                    <%}%>
                    <%if (jet.getF4() != 0) {%>
                <th>Methi Thepla</th>
                    <%}%>
                    <%if (jet.getF5() != 0) {%>
                <th>Pav Katka</th>
                    <%}%>
                    <%if (jet.getF6() != 0) {%>
                <th>Chole Puri</th>
                    <%}%>
                    <%if (jet.getF7() != 0) {%>
                <th>Thepla</th>
                    <%}%>
                    <%if (jet.getF8() != 0) {%>
                <th>Frankie</th>
                    <%}%>
                    <%if (jet.getF9() != 0) {%>
                <th>Paneer Sandwich</th>
                    <%}%>
                    <%if (jet.getF10() != 0) {%>
                <th>Indori Pauva</th>
                    <%}%>
                    <%if (jet.getF11() != 0) {%>
                <th>Rava Idli</th>
                    <%}%>
                    <%if (jet.getF12() != 0) {%>
                <th>Murukku</th>
                    <%}%>
                    <%if (jet.getF13() != 0) {%>
                <th>Butter Toast</th>
                    <%}%>
                    <%if (jet.getF14() != 0) {%>
                <th>Mango Lassi</th>
                    <%}%>
                    <%if (jet.getF15() != 0) {%>
                <th>Chai</th>
                    <%}%>
                    <%if (jet.getF16() != 0) {%>
                <th>Masala Chass</th>
                    <%}%>
                <th>Accept</th>
                <th>Reject</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="name-pr">
                    <p><%=jet.getOdate()%></p>
                </td>
                <td class="name-pr">
                    <p><%=jet.getUserName()%></p>
                </td>
                <td class="name-pr">
                    <p><%=jet.getUserPhone()%></p>
                </td>
                <%if (jet.getF1() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF1()%></p>
                </td>
                <%}%>
                <%if (jet.getF2() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF2()%></p>
                </td>
                <%}%>
                <%if (jet.getF3() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF3()%></p>
                </td>
                <%}%>
                <%if (jet.getF4() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF4()%></p>
                </td>
                <%}%>
                <%if (jet.getF5() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF5()%></p>
                </td>
                <%}%>
                <%if (jet.getF6() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF6()%></p>
                </td>
                <%}%>
                <%if (jet.getF7() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF7()%></p>
                </td>
                <%}%>
                <%if (jet.getF8() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF8()%></p>
                </td>
                <%}%>
                <%if (jet.getF9() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF9()%></p>
                </td>
                <%}%>
                <%if (jet.getF10() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF10()%></p>
                </td>
                <%}%>
                <%if (jet.getF11() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF11()%></p>
                </td>
                <%}%>
                <%if (jet.getF12() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF12()%></p>
                </td>
                <%}%>
                <%if (jet.getF13() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF13()%></p>
                </td>
                <%}%>
                <%if (jet.getF14() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF14()%></p>
                </td>
                <%}%>
                <%if (jet.getF15() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF15()%></p>
                </td>
                <%}%>
                <%if (jet.getF16() != 0) {%>
                <td class="name-pr">
                    <p><%=jet.getF16()%></p>
                </td>
                <%}%>
                <td>
                    <button class="btn hvr-hover" type="submit" value="<%=jet.getOrdId()%>a" name="respb"><i class="fas fa-check" style="color:white"></i></button>
<!--                    <a onclick="document.getElementById('form1').submit();" value="<%=jet.getOdate()%>a" name="respb" href="#!">
                        <i class="fas fa-check"></i>
                    </a>-->
                </td>
                <td>
                    <button class="btn hvr-hover" type="submit" value="<%=jet.getOdate()%>r" name="respb"><i class="fas fa-times" style="color:white"></i></button>
<!--                    <a value="<%=jet.getOdate()%>r" name="respb" href="midord">
                        <i class="fas fa-times"></i>
                    </a>-->
                </td>
            </tr>
            <!--klkl-->


        </tbody>
    </table>
</form>
<%
    }
%>
<%
    }
%>