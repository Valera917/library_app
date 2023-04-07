# Valera Medovkin Ks-31
Library app


## HTTP Verbs
| HTTP METHOD | URL                                     | Payload                           | Description                           |
|-------------|-----------------------------------------|-----------------------------------|---------------------------------------|
| GET         | /users/:user_id                         | {id: 2}                           | Retrieve user by ID                   |
| GET         | /users                                  | {}                                | Retrieve all users                    |
| GET         | /users/new                              | {}                                | Retrieve form for new user            |
| GET         | /users/:user_id/edit                    | {id: 2}                           | Retrieve form for editing user        |
| POST        | /users                                  | {name: zxc, email: zxc@gmail.com} | Create a new user with name and email |
| DELETE      | /users                                  | {id: 2}                           | Delete user by ID                     |
| PUT         | /users/:user_id                         | {id: 2}                           | Update user by ID                     |
| PATCH       | /users/:user_id                         | {id: 2}                           | Update user by ID                     |
| GET         | /books                                  | {}                                | Retrieve all books                    |
| GET         | /books/:book_id                         | {id: 2}                           | Retrieve book by ID                   |
| GET         | /books/new                              | {}                                | Retrieve form for new book            |
| POST        | /books                                  | {}                                | Create a new book                     |
| DELETE      | /books                                  | {id: 2}                           | Delete book by ID                     |
| PUT         | /books/:user_id                         | {id: 2}                           | Update book by ID                     |
| PATCH       | /books/:user_id                         | {id: 2}                           | Update book by ID                     |
| GET         | /genres                                 | {}                                | Retrieve all genres                   |
| GET         | /genres/:genre_id                       | {id: 2}                           | Retrieve genre by ID                  |
| GET         | /genres/new                             | {}                                | Retrieve form for new genre           |
| POST        | /genres                                 | {}                                | Create a new genre                    |
| DELETE      | /genres                                 | {id: 2}                           | Delete genre by ID                    |
| PUT         | /genres/:user_id                        | {id: 2}                           | Update genre by ID                    |
| PATCH       | /genres/:user_id                        | {id: 2}                           | Update genre by ID                    |
| GET         | /authors                                | {}                                | Retrieve all authors                  |
| GET         | /authors/:author_id                     | {id: 2}                           | Retrieve author by ID                 |
| GET         | /authors/new                            | {}                                | Retrieve form for new author          |
| POST        | /authors                                | {}                                | Create a new author                   |
| DELETE      | /authors                                | {id: 2}                           | Delete author by ID                   |
| PUT         | /authors/:author_id                     | {id: 2}                           | Update author by ID                   |
| PATCH       | /authors/:author_id                     | {id: 2}                           | Update author by ID                   |
| GET         | /bibliotekas                            | {}                                | Retrieve all libraries                |
| GET         | /bibliotekas/:biblioteka_id             | {id: 2}                           | Retrieve library by ID                |
| GET         | /bibliotekas/new                        | {}                                | Retrieve form for new library         |
| POST        | /bibliotekas                            | {}                                | Create a new library                  |
| DELETE      | /bibliotekas                            | {id: 2}                           | Delete library by ID                  |
| PUT         | /bibliotekas/:biblioteka_id             | {id: 2}                           | Update library by ID                  |
| PATCH       | /bibliotekas/:biblioteka_id             | {id: 2}                           | Update library by ID                  |
| GET         | /reader_cards                           | {}                                | Retrieve all reader_cards             |
| GET         | /reader_cards/:reader_card_id           | {id: 2}                           | Retrieve reader_card by ID            |
| GET         | /reader_cards/new                       | {}                                | Retrieve form for new reader_card     |
| POST        | /reader_cards                           | {}                                | Create a new reader_card              |
| DELETE      | /reader_cards                           | {id: 2}                           | Delete reader_card by ID              |
| PUT         | /reader_cards/:reader_card_id           | {id: 2}                           | Update reader_card by ID              |
| PATCH       | /reader_cards/:reader_card_id           | {id: 2}                           | Update reader_card by ID              |




## ERD diagram
![Alt text](public/erd_diagram.png?raw=true "Title")

### Labs

- [ ] Task 1 -> Rails приложение Библиотеки

- 
      Библиотеки (поля на выбор)
      Книги (поля на выбор. Библиотека может иметь n книг)
      Авторы(поля на выбор. Книга может иметь n авторов)
      Жанр(поля на выбор. Книга может иметь n авторов)
      Карта Читателя (поля на выбор. Библиотека может иметь n карт)
      Пользователи (поля на выбор В карте может быть 1 пользователь)

- [] Task 2 --> Вставити 100 записів у ваші таблиці. У кожній групі по 6 таблиць в 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  У кожній моделі повинні бути методи на оновлення. В 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  Зробити по 2 SQL VIEW.
- [] Task 3 --> Readme file.
- [] Task 4 --> Зробити CRUD форми под кожну модель.
