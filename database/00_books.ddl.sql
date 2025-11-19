CREATE TYPE fullname AS (
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE tuser(
    id_user SERIAL PRIMARY KEY,
    username fullname NOT NULL,
    dob TIMESTAMP NOT NULL,
    create_at TIMESTAMP NOT NULL DEFAULT NOW(),
    update_at TIMESTAMP NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE user_email(
    id_user_email SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES tuser(id_user) ON DELETE CASCADE,
    email VARCHAR(100) NOT NULL,
    UNIQUE(id_user,email)
);

CREATE TABLE author(
    id_author SERIAL PRIMARY KEY,
    author_name fullname NOT NULL
);

CREATE TABLE book(
    id_book SERIAL PRIMARY KEY,
    name_book VARCHAR(50) NOT NULL,
    sipnosis TEXT NOT NULL,
    isbn UNIQUE VARCHAR(20) NOT NULL,
    publish_date TIMESTAMP NOT NULL,
    create_at TIMESTAMP NOT NULL DEFAULT NOW(),
    update_at TIMESTAMP NOT NULL,
    avalaible BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE author_book(
    id_book INT NOT NULL REFERENCES book(id_book) ON DELETE RESTRICT,
    id_author INT NOT NULL REFERENCES author ON DELETE RESTRICT,
    is_main BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY(id_book,id_author)
);

CREATE TYPE borrow_status AS ENUM('borrowed','returned','overdue');

CREATE TABLE borrow(
    id_borrow SERIAL PRIMARY KEY,
    id_book INT NOT NULL REFERENCES book(id_book) ON DELETE RESTRICT,
    id_user INT NOT NULL REFERENCES tuser(id_user) ON DELETE RESTRICT,
    borrow_date TIMESTAMP NOT NULL DEFAULT NOW(),
    due_date TIMESTAMP NOT NULL DEFAULT NOW() + INTERVAL '15 days',
    b_status borrow_status NOT NULL DEFAULT 'borrowed'
);
