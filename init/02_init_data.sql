INSERT INTO "user" (id, uuid, username, email) VALUES (
    1,
    '706f8a14-706f-11eb-9439-0242ac130002',
    'karol',
    'karol@gmail.com'
), (
    2,
    '706f8c62-706f-11eb-9439-0242ac130002',
    'magda',
    'magda@gmail.com'
), (
    3,
    '706f8df2-706f-11eb-9439-0242ac130002',
    'alojzy',
    'alojzy@gmail.com'
), (
    4,
    '706f8eba-706f-11eb-9439-0242ac130002',
    'milosz',
    'milosz@gmail.com'
), (
    5,
    '706f8fd2-706f-11eb-9439-0242ac130002',
    'aneta',
    'aneta@gmail.com'
);

INSERT INTO topic (id, uuid, name, description, author_id) VALUES (
    1,
    '706f9108-706f-11eb-9439-0242ac130002',
    'Kosmetyki do twarzy',
    'W ramch tego wątku wymieniamy się doświadczeniami na temat kosmetyków do twarzy',
    1
), (
    2,
    '706f925c-706f-11eb-9439-0242ac130002',
    'Curling',
    'Czy to sport czy już nie?',
    5
), (
    3,
    '706f9374-706f-11eb-9439-0242ac130002',
    'Kot vs. Pies',
    'Który zwierzak lepszy? Zdjęcia zwierzaków',
    2
), (
    4,
    '706f94e6-706f-11eb-9439-0242ac130002',
    'Lotnictwo wirtualne',
    'Luźne pogaduchy na temat lotnictwa.',
    3
), (
    5,
    '706f9630-706f-11eb-9439-0242ac130002',
    'Java vs. Kotlin',
    'Który język lepszy? W czym programujecie?',
    4
), (
    6,
    '706f99e6-706f-11eb-9439-0242ac130002',
    'Oferty pracy dla programistów',
    'Zbiór ofer pracy dla programistów. Koniecznie podaj widełki płac i język!',
    4
), (
    7,
    '706f9b9e-706f-11eb-9439-0242ac130002',
    'Smart Home',
    'Tematy związane z domem, smart home oraz z instalacjami pompy ciepłą czy paneli fotowoltaicznych.',
    1
), (
    8,
    '706f9cac-706f-11eb-9439-0242ac130002',
    'SQL vs NoSQL',
    'Co lepsze PostgreSQL czy MongoDB?',
    3
);

INSERT INTO post (id, uuid, topic_id, author_id, "order", "content") VALUES (
    1,
    '706f9dd8-706f-11eb-9439-0242ac130002',
    6,
    1,
    1,
    'Oferta 1! Widełki 15k-15k! Senior Java Developer'
), (
    2,
    '706f9ef0-706f-11eb-9439-0242ac130002',
    6,
    2,
    2,
    'Oferta 2! Widełki 15k-15k! Senior Java Developer'
), (
    3,
    '706f9ffe-706f-11eb-9439-0242ac130002',
    6,
    3,
    3,
    'Oferta 3! Widełki 15k-15k! Senior Java Developer'
), (
    4,
    '706fa134-706f-11eb-9439-0242ac130002',
    6,
    4,
    4,
    'Oferta 4! Widełki 15k-15k! Senior Java Developer'
), (
    5,
    '706fa26a-706f-11eb-9439-0242ac130002',
    6,
    5,
    5,
    'Oferta 5! Widełki 15k-15k! Senior Java Developer'
), (
    6,
    '706fa3be-706f-11eb-9439-0242ac130002',
    6,
    1,
    6,
    'Oferta 6! Widełki 15k-15k! Senior Java Developer'
), (
    7,
    '706fa4e0-706f-11eb-9439-0242ac130002',
    6,
    2,
    7,
    'Oferta 7! Widełki 15k-15k! Senior Java Developer'
);