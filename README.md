# bookmark_Manager
```
User Story 1:
As a User
So I can view all of my Bookmarks
I want to be able to show a list of all my Bookmarks
```
```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:
```
CREATE DATABASE bookmark_manager;
```
To set up the tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder.

### To set up Testing database   
Connect to `psql` and create the `bookmark_manager_test` database:
```
CREATE DATABASE bookmark_manager_test;
```
To set up the tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder.
