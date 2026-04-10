package com.shiv.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shiv.model.Course;
import com.shiv.model.Student;
import com.shiv.util.HibernateUtil;

public class StudentDao {

    public void saveStudent(Student student) {

        Transaction tx = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            tx = session.beginTransaction();

            session.persist(student);

            tx.commit();

        } catch (Exception e) {

            if (tx != null) tx.rollback();

            System.out.println("❌ Error: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
    
    public Course getCourseByTitle(String title) {

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            return session.createQuery(
                    "FROM Course WHERE title = :title", Course.class)
                    .setParameter("title", title)
                    .uniqueResult();
        }
    }
}