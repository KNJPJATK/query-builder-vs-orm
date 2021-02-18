package pl.knjpjatk.model;

import javax.persistence.*;

@lombok.Data
@lombok.NoArgsConstructor
@lombok.AllArgsConstructor
@Entity
@Table(schema = "public")
public class Topic {

    @Id
    private Long id;

    @Column(nullable = false, unique = true)
    private String uuid;

    @Column(nullable = false, unique = true)
    private String name;

    @Column(nullable = false)
    private String description;

    @JoinColumn(nullable = false)
    @ManyToOne
    private User author;

}
