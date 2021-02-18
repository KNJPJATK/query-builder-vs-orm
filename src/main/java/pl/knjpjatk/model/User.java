package pl.knjpjatk.model;

import javax.persistence.*;

@lombok.Data
@lombok.NoArgsConstructor
@lombok.AllArgsConstructor
@Entity
@Table(schema = "public")
public class User {

    @Id
    private Long id;

    @Column(nullable = false, unique = true)
    private String uuid;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false, unique = true)
    private String email;

}
