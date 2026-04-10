package com.shiv.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shiv.model.Department;
import com.shiv.util.HibernateUtil;

public class DepartmentDao {

    public void saveDepartment(Department dept) {

        Transaction tx = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            tx = session.beginTransaction();

            session.persist(dept);

            tx.commit();

        } catch (Exception e) {

            if (tx != null) tx.rollback();

            System.out.println("❌ Error: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
}