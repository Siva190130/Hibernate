package com.shiv.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.shiv.dao.DepartmentDao;
import com.shiv.model.Department;
import com.shiv.model.Employee;

@WebServlet("/department")
public class DepartmentServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private DepartmentDao dao = new DepartmentDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String deptName = req.getParameter("deptName");

        String[] empNames = req.getParameterValues("empName");
        String[] salaries = req.getParameterValues("salary");

        Department dept = new Department();
        dept.setName(deptName);

        List<Employee> empList = new ArrayList<>();

        for (int i = 0; i < empNames.length; i++) {

            Employee emp = new Employee();
            emp.setName(empNames[i]);
            emp.setSalary(Double.parseDouble(salaries[i]));

            emp.setDepartment(dept); // 🔥 important
            empList.add(emp);
        }

        dept.setEmployees(empList); // 🔥 important

        try {
            dao.saveDepartment(dept);
            resp.sendRedirect("oneToMany.jsp?success=true");
        } catch (Exception e) {
            resp.sendRedirect("oneToMany.jsp?error=true");
        }
    }
}