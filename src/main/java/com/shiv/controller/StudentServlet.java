package com.shiv.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.shiv.dao.StudentDao;
import com.shiv.model.Course;
import com.shiv.model.Student;
@WebServlet("/student")
public class StudentServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private StudentDao dao = new StudentDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String[] courseNames = req.getParameterValues("course");

        Student student = new Student();
        student.setName(name);

        List<Course> courseList = new ArrayList<>();

        for (String c : courseNames) {

            Course existing = dao.getCourseByTitle(c);

            if (existing != null) {
                courseList.add(existing); // ✅ reuse existing
            } else {
                Course newCourse = new Course();
                newCourse.setTitle(c);
                courseList.add(newCourse); // ✅ create only if needed
            }
        }

        student.setCourses(courseList);

        try {
            dao.saveStudent(student);
            resp.sendRedirect("ManyToMany.jsp?success=true");
        } catch (Exception e) {
            resp.sendRedirect("ManyToMany.jsp?error=true");
        }
    }
}