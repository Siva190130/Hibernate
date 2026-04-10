package com.shiv.dao;

import org.hibernate.Session;

import com.shiv.model.Person;
import com.shiv.util.HibernateUtil;
import org.hibernate.Transaction;

public class PersonDao {

    public void savePerson(Person person) {

        Transaction tx = null;

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            tx = session.beginTransaction();

            session.persist(person); // cascade saves passport

            tx.commit();

        } catch (Exception e) {

            if (tx != null) {
                tx.rollback();
            }

            System.out.println("❌ Error saving Person: " + e.getMessage());
            throw new RuntimeException(e);
        }
    }
}