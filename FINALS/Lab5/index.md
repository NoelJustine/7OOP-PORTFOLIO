---
title: "FINALS - LABORATORY TASK 5"
description: "CLI using Mysql and Python"
layout: default
---

# FINALS - LABORATORY TASK 5
**CLI using Mysql and Python**  


<br>


### INSTRUCTION

- Make sure you have installed the following pre-requisites before proceeding:
  - Mysql-connector
  - Mysql-connector-python
  - Xampp is running along with Apache and Mysql in the background
- Create the following database in Mysql;
  - Database name: moviesDB with the ff: fields:
    - movie_id int(10) Primary Key
    - title varchar(50) NOT NULL
    - main_actor varchar(50) NOT NULL
    - director varchar(50) NOT NULL
    - genre varchar(25) NOT NULL
    - gross_sales float
    - ratings (G, PG, R13, R16,X) varchar(5)
  - Insert at_least 5 records
  - Create a user named test_user and assign a password and give it an admin
access by checking necessary SQL functions
- Guided by the Demo code attached in this task. test_DemoDB.py
- Kindly continue working on the code that will allow the user to navigate through the
Database and perform simple CRUD operations. Follow the following **CLI Menu
Options:**
  
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">----- MOVIE DATABASE CLI -----
1. Add Movie
2. View Movies
3. Update Movies
4. Delete a Movie
5. Search a Movie
6. Display Total Records
7. Exit
Select an option (1-6): 
</pre>
  </div>
  
- The user should be able perform the ff: in your program.  
**MOVIE DATABASE CRUD APP**  
  1 - Add New Record  
  2 - View all records,  
  3 - Update a Record and show the updates,  
  4 - Delete a record  
  **5 - Search A Record**  
  6 - Display **Total Numbers** of Movies stored in the database  
  7 - Exit  
- For additional challenge, Task – You are to add a **SEARCH option** in the MENU that will
allow the user to search by Name or emp_id, then display the information about the
record being search. You may use Like statement and fetchOne method in my SQL to
do this.
- You are also going to add a method that will display the the **total number of records** in
your database – You may use SQL count statement for this.
- What to submit:
  - a. UI Menu
  - b. Sample Output
  - c. Source Code
  - d. Exported sql file

<br>

### 💻 Source Code
  
**MYSQL FILE**
[moviesdb.sql](https://github.com/NoelJustine/7OOP-PORTFOLIO/blob/main/FINALS/Lab5/moviesdb.sql).
  
```python
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",  # Replace with your MySQL host (e.g., IP address or hostname)
    user="test_user",  # Replace with your MySQL username
    password="password",  # Replace with your MySQL password
    database="moviesdb"  # Replace with the name of your database
)

cursor = conn.cursor()

def add_movies():
    print()
    title = input("Enter title: ")
    mov_id = input("Enter movie ID: ")
    main_lead = input("Enter main lead: ")
    director = input("Enter director: ")
    genre = input("Enter genre: ")
    gross_sales = float(input("Enter gross sales: "))
    ratings = input("Enter ratings (G,PG,R13,R16,X):  ")

    cursor.execute("INSERT INTO movie (movie_id, title, main_actor, director, genre, gross_sales, ratings) VALUES(%s,%s,%s,%s,%s,%s,%s)", (mov_id,title,main_lead,director,genre,gross_sales,ratings))
    conn.commit()
    print("Movie added successfully!")
    view_movies()
    # View all movies
    conn.close()

def view_movies():
    cursor.execute("SELECT * FROM movie")
    rows = cursor.fetchall()
    if rows:
        print("\nMovies List:")
        for row in rows:
            print(row)
    else:
        print("\nNo movie found.")
    conn.close()
    print()


def update_movies():
    print()
    mov_id = input("Enter movie ID to update: ")
    title = input("Enter new title: ")
    main_lead = input("Enter new main lead: ")
    director = input("Enter new director: ")
    genre = input("Enter new genre: ")
    gross_sales = float(input("Enter new gross sales: "))
    ratings = input("Enter new ratings (G,PG,R13,R16,X):  ")

    cursor.execute("UPDATE movie SET title=%s, main_actor=%s, director=%s, genre=%s, gross_sales=%s, ratings=%s WHERE movie_id=%s", (title,main_lead,director,genre,gross_sales,ratings,mov_id))
    conn.commit()
    print("Movie updated successfully!\n")
    conn.close()


def delete_movie():
    print()
    movie_id = int(input("Enter movie ID to delete: "))
    cursor.execute(f"DELETE FROM movie WHERE movie_id={movie_id}")
    conn.commit()
    print("Movie deleted successfully!")
    view_movies()
    conn.close()

def search_movie():
    print()
    title = input("Enter movie title: ")

    cursor.execute("SELECT * FROM movie WHERE title LIKE %s", (f"%{title}%",))
    rows = cursor.fetchall()

    if rows:
        print("\nMovies List:")
        for row in rows:
            print(row)
    else:
        print("\nNo movie found.")
    conn.close()
    print()

def display_records():
    cursor.execute("SELECT COUNT(*) FROM movie")
    movies = cursor.fetchone()

    print(f"\nThere are currently have {movies} movies in the records\n")


def main_menu():
    while True:
        print("----- MOVIE DATABASE CLI -----")
        print("1. Add Movies")
        print("2. View Movies")
        print("3. Update Movies")
        print("4. Delete a Movie")
        print("5. Search a Movie")
        print("6. Display Total Records")
        print("7. Exit")

        choice = int(input("Select an option (1-7): "))

        if choice == 1:
            add_movies()
        elif choice == 2:
            view_movies()
        elif choice == 3:
            update_movies()
        elif choice == 4:
            delete_movie()
        elif choice == 5:
            search_movie()
        elif choice == 6:
            display_records()
        elif choice == 7:
            break
        else:
            print("\nInvalid Input!\n")

    conn.close()

if __name__ == '__main__':
    main_menu()
```

<br>


### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">----- MOVIE DATABASE CLI -----
1. Add Movies
2. View Movies
3. Update Movies
4. Delete a Movie
5. Search a Movie
6. Display Total Records
7. Exit
Select an option (1-7): <span style="color:#00bcd4;">2</span>
Movies List:
(111, 'Avatar', 'Sam Worthington', 'James Cameron', 'Sci-Fi', 2920000000.0, '6') 
(112, 'Inside Out 2', 'Maya Hawke', 'Kelsey Mann', 'Animation', 1690000000.0, 'PG')
(113, 'Deadpool & Wolverine', 'Ryan Reynolds', 'Shawn Levy', 'Action', 1330000000.0, 'R16') 
(114, 'The Wild Robot', "Lupita Nyong'o", 'Chris Sanders', 'Adventure', 334000000.0, 'PG')
(115, 'The Lion King', 'Matthew Broderick', 'Roger Allers', 'Musical', 968000000.0, '6') 
(117, 'Sanggre', 'Mark', 'Justine', 'Fantasy', 100.0, 'PG')
</pre>
  </div>

<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">----- MOVIE DATABASE CLI -----
1. Add Movies
2. View Movies
3. Update Movies
4. Delete a Movie
5. Search a Movie
6. Display Total Records
7. Exit
Select an option (1-7): <span style="color:#00bcd4;">6</span>

There are currently have (6,) movies in the records
</pre>
  </div>

<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">----- MOVIE DATABASE CLI -----
1. Add Movies
2. View Movies
3. Update Movies
4. Delete a Movie
5. Search a Movie
6. Display Total Records
7. Exit
Select an option (1-7): <span style="color:#00bcd4;">5</span>

Enter movie title: <span style="color:#00bcd4;">Avatar</span>

Movies List:
(111, 'Avatar', 'Sam Worthington', 'James Cameron', 'Sci-Fi', 2920000000.0, '6') 

</pre>
  </div>

<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">----- MOVIE DATABASE CLI -----
1. Add Movies
2. View Movies
3. Update Movies
4. Delete a Movie
5. Search a Movie
6. Display Total Records
7. Exit
Select an option (1-7): <span style="color:#00bcd4;">1</span>

Enter title: <span style="color:#00bcd4;">Titanic</span>
Enter movie ID: <span style="color:#00bcd4;">118</span>
Enter main lead: <span style="color:#00bcd4;">Leonardo Dicaprio</span>
Enter director: <span style="color:#00bcd4;">James Cameron</span>
Enter genre: <span style="color:#00bcd4;">Romance</span>
Enter gross sales: <span style="color:#00bcd4;">99999</span>
Enter ratings (G, PG, R13, R16,X): <span style="color:#00bcd4;">PG</span>
Movie added successfully!

Movies List:
(111, 'Avatar', 'Sam Worthington', 'James Cameron', 'Sci-Fi', 2920000000.0, '6') 
(112, 'Inside Out 2', 'Maya Hawke', 'Kelsey Mann', 'Animation', 1690000000.0, 'P') 
(113, 'Deadpool & Wolverine', 'Ryan Reynolds', 'Shawn Levy', 'Action', 1330000000.0, 'R16') 
(114, 'The Wild Robot', "Lupita Nyong'o", 'Chris Sanders', 'Adventure', 334000000.0, 'PG') 
(115, 'The Lion King', 'Matthew Broderick', 'Roger Allers', 'Musical', 968000000.0, 'G') 
(117, 'Sanggre', 'Mark', 'Justine', 'Fantasy', 100.0, 'PG')
(118, 'Titanic', 'Leonardo Dicaprio', James Cameron', 'Romance' 99999.0, 'PG')
</pre>
  </div>

<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">----- MOVIE DATABASE CLI -----
1. Add Movies
2. View Movies
3. Update Movies
4. Delete a Movie
5. Search a Movie
6. Display Total Records
7. Exit
Select an option (1-7): <span style="color:#00bcd4;">4</span>

Enter movie ID to delete: 118
Movie delete successfully!

Movies List:
(111, 'Avatar', 'Sam Worthington', 'James Cameron', 'Sci-Fi', 2920000000.0, '6') 
(112, 'Inside Out 2', 'Maya Hawke', 'Kelsey Mann', 'Animation', 1690000000.0, 'P') 
(113, 'Deadpool & Wolverine', 'Ryan Reynolds', 'Shawn Levy', 'Action', 1330000000.0, 'R16') 
(114, 'The Wild Robot', "Lupita Nyong'o", 'Chris Sanders', 'Adventure', 334000000.0, 'PG') 
(115, 'The Lion King', 'Matthew Broderick', 'Roger Allers', 'Musical', 968000000.0, 'G') 
(117, 'Sanggre', 'Mark', 'Justine', 'Fantasy', 100.0, 'PG')
</pre>
  </div>


<br>


### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)
