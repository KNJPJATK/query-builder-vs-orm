package pl.knjpjatk.model;

import javax.persistence.*;

@lombok.Data
@lombok.NoArgsConstructor
@lombok.AllArgsConstructor
@Entity
@Table(schema = "public")
public class Post {

    @Id
    private Long id;

    @Column(nullable = false, unique = true)
    private String uuid;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Topic topic;

    @ManyToOne
    @JoinColumn(nullable = false)
    private User author;

    @Column(nullable = false)
    private Long order;

    @Column(nullable = false)
    private String content;

}
