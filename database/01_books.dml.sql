INSERT INTO tuser (username, dob, update_at)
VALUES
    (ROW('Ana','García'), '1995-01-12', NOW()),
    (ROW('Luis','Martínez'), '1992-03-21', NOW()),
    (ROW('Carla','Pérez'), '1998-07-05', NOW()),
    (ROW('Jorge','Ramírez'), '1990-11-09', NOW()),
    (ROW('Sofía','Luna'), '1999-02-15', NOW()),
    (ROW('Diego','Torres'), '1993-12-01', NOW()),
    (ROW('Laura','Mendoza'), '1997-09-18', NOW()),
    (ROW('Felipe','Córdoba'), '1989-05-30', NOW()),
    (ROW('Natalia','Ruiz'), '1996-10-10', NOW()),
    (ROW('Mateo','Ríos'), '2000-04-27', NOW());

-- =======================
-- user_email (10 registros)
-- =======================
INSERT INTO user_email (id_user, email)
VALUES
    (1, 'ana@example.com'),
    (2, 'luis@example.com'),
    (3, 'carla@example.com'),
    (4, 'jorge@example.com'),
    (5, 'sofia@example.com'),
    (6, 'diego@example.com'),
    (7, 'laura@example.com'),
    (8, 'felipe@example.com'),
    (9, 'natalia@example.com'),
    (10, 'mateo@example.com');

-- =======================
-- author (10 registros)
-- =======================
INSERT INTO author (author_name)
VALUES
    (ROW('Gabriel','García Márquez')),
    (ROW('Julio','Cortázar')),
    (ROW('Isabel','Allende')),
    (ROW('Mario','Vargas Llosa')),
    (ROW('Laura','Restrepo')),
    (ROW('Haruki','Murakami')),
    (ROW('George','Orwell')),
    (ROW('J.K.','Rowling')),
    (ROW('Stephen','King')),
    (ROW('Jane','Austen'));

-- =======================
-- book (10 registros)
-- =======================
INSERT INTO book (name_book, sipnosis, isbn, publish_date, update_at)
VALUES
('Cien Años de Soledad', 'Realismo mágico en Macondo.', 'ISBN0001', '1967-05-30', NOW()),
('Rayuela', 'Historia fragmentada e innovadora.', 'ISBN0002', '1963-06-28', NOW()),
('La Casa de los Espíritus', 'Saga familiar con elementos mágicos.', 'ISBN0003', '1982-01-01', NOW()),
('La Ciudad y los Perros', 'Crítica social ambientada en un colegio militar.', 'ISBN0004', '1963-10-18', NOW()),
('Delirio', 'Novela política y psicológica.', 'ISBN0005', '2004-06-01', NOW()),
('Kafka en la Orilla', 'Trama surrealista y poética.', 'ISBN0006', '2002-09-12', NOW()),
('1984', 'Distopía totalitaria.', 'ISBN0007', '1949-06-08', NOW()),
('Harry Potter y la Piedra Filosofal', 'Un niño descubre que es mago.', 'ISBN0008', '1997-06-26', NOW()),
('El Resplandor', 'Horror psicológico en un hotel.', 'ISBN0009', '1977-01-28', NOW()),
('Orgullo y Prejuicio', 'Clásico romántico inglés.', 'ISBN0010', '1813-01-28', NOW());

-- =======================
-- author_book (10 registros)
-- =======================
INSERT INTO author_book (id_book, id_author, is_main)
VALUES
(1, 1, TRUE),
(2, 2, TRUE),
(3, 3, TRUE),
(4, 4, TRUE),
(5, 5, TRUE),
(6, 6, TRUE),
(7, 7, TRUE),
(8, 8, TRUE),
(9, 9, TRUE),
(10, 10, TRUE);

-- =======================
-- borrow (10 registros)
-- =======================
INSERT INTO borrow (id_book, id_user, b_status)
VALUES
(1, 1, 'borrowed'),
(2, 2, 'borrowed'),
(3, 3, 'returned'),
(4, 4, 'borrowed'),
(5, 5, 'overdue'),
(6, 6, 'borrowed'),
(7, 7, 'returned'),
(8, 8, 'borrowed'),
(9, 9, 'overdue'),
(10, 10, 'borrowed');