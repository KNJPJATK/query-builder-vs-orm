CREATE SEQUENCE id_seq AS INT START 1000 NO CYCLE;

CREATE TABLE "user" (
    id INT NOT NULL DEFAULT nextval('id_seq'),
    uuid VARCHAR(36) NOT NULL,
    username VARCHAR(64) NOT NULL,
    email VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (uuid),
    UNIQUE (username),
    UNIQUE (email)
);

CREATE TABLE topic (
    id INT NOT NULL DEFAULT nextval('id_seq'),
    uuid VARCHAR(36) NOT NULL,
    name VARCHAR(128) NOT NULL,
    description TEXT NOT NULL DEFAULT 'No description',
    author_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES "user" (id),
    UNIQUE (uuid),
    UNIQUE (name)
);

CREATE TABLE post (
    id INT NOT NULL DEFAULT nextval('id_seq'),
    uuid VARCHAR(36) NOT NULL,
    topic_id INT NOT NULL,
    author_id INT NOT NULL,
    "order" INT NOT NULL,
    content TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (topic_id) REFERENCES topic (id),
    FOREIGN KEY (author_id) REFERENCES "user" (id),
    UNIQUE (uuid),
    UNIQUE (topic_id, "order"),
    CHECK ("order" > 0)
);
