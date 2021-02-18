package pl.knjpjatk;

import org.jooq.DSLContext;
import org.jooq.Record;
import org.jooq.Record2;
import org.jooq.Result;
import org.jooq.impl.DSL;

import java.sql.Connection;
import java.sql.DriverManager;

import static pl.knjpjatk.generated.tables.User.*;
import static pl.knjpjatk.generated.tables.Topic.*;

public class MainJOOQ {

    public static void main(String[] args) throws ClassNotFoundException {
        Class.forName("org.postgresql.Driver");
        try (Connection connection = DriverManager
                .getConnection("jdbc:postgresql://localhost/data", "root", "FFiLRv10tXIQjOUNFZjcs9zrWJPjimVg")) {
            DSLContext context = DSL.using(connection);

            /*
             SELECT U.username, COUNT(T.id) AS topics
             FROM "user" U
             JOIN topic T ON U.id = T.author_id
             GROUP BY U.username;
             */

            Result<Record2<String, Integer>> result = context
                    .select(USER.USERNAME, DSL.count(TOPIC.ID).as("topics"))
                    .from(USER)
                    .join(TOPIC)
                    .on(USER.ID.eq(TOPIC.AUTHOR_ID))
                    .groupBy(USER.USERNAME)
                    .fetch();

            for (Record2<String, Integer> reportItem : result) {
                System.out.println("User: " + reportItem.get(USER.USERNAME) + " has " + reportItem.get("topics") + " topics");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
