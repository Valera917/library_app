# Valera Medovkin Ks-31
Library app


## HTTP Verbs
| HTTP METHOD | URL                  | Payload                           | Description                     |
|-------------|----------------------|-----------------------------------|---------------------------------|
| GET         | /users/:user_id      | {id: 2}                           | test test test test             |
| GET         | /users               | {}                                | testtesttesttesttest            |
| GET         | /users/new           | {}                                | test test test test             |
| GET         | /users/:user_id/edit | {id: 2}                           | test test test test             |
| POST        | /users               | {name: zxc, email: zxc@gmail.com} | adding user with name and email |
| DELETE      | /books               | {id:2}                            | testtesttesttesttest            |
| PUT         | /users/:user_id      | {id: 2}                           | test test test test             |
| PATCH       | /users/:user_id      | {id: 2}                           | testtesttesttesttest            |
| GET         | /books               | {}                                | test test test test             |
| GET         | /books/book_id       | {id: 2}                           | test test test test             |
| GET         | /books/new           | {}                                | test test test test             |
| POST        | /books               | {}                                | testtesttesttesttest            |
| DELETE      | /books               | {id:2}                            | testtesttesttesttest            |
| PUT         | /books/:user_id      | {id: 2}                           | test test test test             |
| PATCH       | /books/:user_id      | {id: 2}                           | testtesttesttesttest            |
| GET         | /genres              | {}                                | test test test test             |
| GET         | /genres/book_id       | {id: 2}                           | test test test test             |
| GET         | /genres/new           | {}                                | test test test test             |
| POST        | /genres               | {}                                | testtesttesttesttest            |
| DELETE      | /genres               | {id:2}                            | testtesttesttesttest            |
| PUT         | /genres/:user_id      | {id: 2}                           | test test test test             |
| PATCH       | /genres/:user_id      | {id: 2}                           | testtesttesttesttest  




## ERD diagram
![Alt text](public/erd_diagram.png?raw=true "Title")

### Labs

- [ ] Task 1 -> Rails приложение Библиотеки
-  Таблицы
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
- [] Task 3 --> Вставити 100 записів у ваші таблиці. У кожній групі по 6 таблиць в 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  У кожній моделі повинні бути методи на оновлення. В 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  Зробити по 2 SQL VIEW.
