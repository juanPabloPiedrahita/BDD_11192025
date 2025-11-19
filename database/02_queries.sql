--Listado de libro que ha prestado el usuario con id = 3
SELECT bo.* FROM book bo
JOIN borrow br ON bo.id_book = br.id_book
WHERE br.id_user = 3;

--Que librs ha prestado Maria Lozano
SELECT bo.* FROM book bo
JOIN borrow br ON bo.id_book = br.id_book
JOIN tuser u ON br.id_user = u.id_user
WHERE u.user_name.first_name = 'Maria' AND u.user_name.last_name = 'Lozano';

--Cual fue el ultimo cliente que pidio prestado el libro titulado 'Rayuela'
SELECT u.* FROM tuser tu
JOIN borrow br ON br.id_user = tu.id_user 
JOIN book bo ON bo.id_book = br.id_book
WHERE bo.name_book = 'Rayuela'
ORDER BY br.borrow_date DESC
LIMIT 1;

--Que libros deben ser entregados entre el 3 y el 10 de diciembre
SELECT bo.* FROM book bo
JOIN borrow br ON bo.id_book = br.id_book
WHERE br.due_date BETWEEN '2025-12-03'  AND '2025-12-10';