# Assignment 3 - Web programming

Instructions
This week we'll be adding a Postgres database to our server.

## Setup PostgreSQL
Your first step will be to install the PostgreSQL software on your machine.  Once you have, create a database and use the "psql" command line command to confirm you can connect to it.

### schema.sql
Create a file called schema.sql in a "database" folder that's in the root of your previous project.  Your previous project will not be part of this one, grade-wise, but since future projects will build on each other, it's good to get in the habit of including your previous code with each submission.

Your schema SQL file should contain CREATE TABLE statements to generate at least four tables for your site, and all of those tables must somehow relate to at least one other table in your schema (ie. you should be able to create JOIN queries between all of them).  Also, with the exception of JOIN tables, every table should have a single "id" column, plus at least three other (meaningful) columns.

These tables do not have to be ones you use in your final project, but obviously if you practice creating tables for your goal site, you'll be able to re-use that work later on.

### seed.sql
You will also need to create a seed.sql file in that same directory.  This file should contain at least four INSERT statements (ie. at least one for each table in your database), and each of those INSERTs should add at least two sample records to their table.

### queries.sql
Finally, you should include a third file in the same directory called queries.sql.  This one should include at least four SELECT queries, each of which should return at least one result (after your seed data has been applied).  Only one of these queries can "select *"; all the rest have to select specific columns, and that selection should make for a meaningful query.

These queries do no have to "line up" with your  tables, so for instance your first query could SELECT from tables A and B, while your second selects from C, your third SELECTS from A, B, and D, and so on.  However, at a minimum at least two of these queries should involve multiple tables.

Again, ideally these queries should correspond to data you'll want to show on your site, but this is not a requirement for the assignment.  As with all assignments you should commit these new files to a GitHub repository, and then submit the link to that repository.

## Rubric
The grading rubric for this assignment is located below.

1 - when run in order (schema => seed => queries) at the command line (using "psql"), all files run successfully and without any errors
schema.sql

1 - the file includes at least four CREATE TABLE statements
1 - every table created has an "id" column (or is a JOIN table with two IDs from other tables)
1 - every table (except for JOIN tables) has at least three other columns with meaningful names and types
seed.sql

1 - the file contains at least four INSERT statements (and at least one per table)
1 - the INSERT queries result in at least two rows per table
1 - the fake seed data is meaningful/realistic
for instance, if your seed INSERTed values of "foo" and "bar" into first_name and last_name columns, you would lose this point; you would need to use actual names (eg. "Michelle" and "Lee") instead.  Similarly all other fields, such as addresses (email or physical), titles, descriptions, etc. should all seem like real data, even though they're fake.
queries.sql

1 - the file contains at least four SELECT queries
1 - at least two of those queries JOIN multiple tables together
1 - no more than one query selects "*", and the selections for the remaining query make sense (eg. a query that selects a book's number of pages and its author's middle name would not be sensical)

## How to import file in PostgreSql bash ?

```bash
\i 'sql/schema.sql'
```
Then

```bash
\i 'sql/seeds.sql'
```

Then

```bash
\i 'sql/queries.sql'
```
