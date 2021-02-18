package pl.knjpjatk;

import pl.knjpjatk.model.Topic;
import pl.knjpjatk.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class MainORM {

    public static void main(String[] args) {
        EntityManagerFactory emf =
                Persistence.createEntityManagerFactory("my-persistence");
        EntityManager em = emf.createEntityManager();

        List<Topic> topics = em.createQuery("SELECT topic FROM Topic topic", Topic.class).getResultList();
        topics.forEach(topic -> {
            System.out.println(topic.getAuthor().getUsername());
        });

        em.close();
        System.out.println("Połączenie bezbłędne");
    }

}
