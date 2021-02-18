package pl.knjpjatk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Main {

    public static void main(String[] args) throws ClassNotFoundException {
        Class.forName("org.postgresql.Driver");
        try (Connection connection = DriverManager
                .getConnection("jdbc:postgresql://localhost/data", "root", "FFiLRv10tXIQjOUNFZjcs9zrWJPjimVg")) {
            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM \"user\" JOIN topic ON topic.author_id = \"user\".id");
            ResultSet rs = stmt.executeQuery();

            // Interpretacja na nasze klasy
            while (rs.next()) {
                System.out.println(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
