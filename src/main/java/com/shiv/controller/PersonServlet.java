package com.shiv.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

import com.shiv.dao.PersonDao;
import com.shiv.model.Passport;
import com.shiv.model.Person;

@WebServlet("/person")
public class PersonServlet extends HttpServlet {

    private PersonDao dao = new PersonDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        String passportNumber = req.getParameter("passportNumber");
        String country = req.getParameter("country");

        Person person = new Person();
        person.setName(name);
        person.setAge(age);

        Passport passport = new Passport();
        passport.setPassportNumber(passportNumber);
        passport.setCountry(country);

        // 🔥 LINK RELATIONSHIP
        passport.setPerson(person);
        person.setPassport(passport);

        try {
            dao.savePerson(person);
            resp.sendRedirect("oneToOne.jsp?success=true");
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("oneToOne.jsp?error=true");
        }
    }
}