# Assignment 4

## Instructions

This week we will connect our database and our Express application.

### Initial "Building Blocks"
This assignment will assume you have both an Express application and a PostgreSQL database with a schema created for it.  While this certainly can be the database you created last week and the Express application you created the week before, it doesn't have to be.

Although it's not a graded part of the assignment, it is assumed that as part of this assignment you will connect those two building blocks by creating a Knexfile and using it to configure a Knex instance.

### Database Routes
You will be adding four routes to your Express app, one for each CRUD operation, to this application.  These routes can be at any URL and take parameters any form you'd like (URL, GET, POST body), but each one should result in (at least) one record of your database being created/returned/updated/deleted.

### Creation
One route should use Knex to INSERT a new record into your database.  At least two details of that record should come from the request somehow as parameters of some sort.  After inserting the new record, this route should return a JSON object representing the newly-created record including it's newly-assigned ID.

### Retrieval
At least one route should make a SELECT query and return the results as an array in a JSON response.  This route should take at least one argument of some sort which is not an ID, and use that argument in the SELECT it runs.  For instance, a book site might take a book's title or an author's name, and return the corresponding record or records.

This query does not have to use "="; you can for instance perform a wildcard text search using a parameter and the LIKE keyword.

### Updating
One route should take two arguments, an ID and a change or set of changes.  It should then run an UPDATE query which updates the record with the provided ID using the provided change or set of changes.

After it finishes it should simply return a JSON object with a single key called "success", and a boolean true as a value.

## Deleting
One route should take a single ID argument, and delete the record with that ID.
Like the UPDATE endpoint, this one should just return a "success: true" JSON response.

### Front End

In addition, the front-end of your site will need some sort of UI for triggering these routes.  This can be as simple as four buttons, each of which trigger a "fetch" to a different route, and then alert some detail from its response.  It can also be more complex: for instance you could have a form with multiple fields, and when the user submits that form it makes an AJAX request that includes the form details and uses them to create a new record.

More advanced UI will be excellent front-end practice ... but since this is a server-focused class, all that is required is that your front-end have some kind of UI for triggering your routes.

### Rubric
The grading rubric for this assignment is located below.

## Create Endpoint

1 - Works and creates a new record (using the provided parameters)

1 - Returns the new record's details as a JSON object

Read Endpoint

1 - Performs a SELECT query using the provided parameter

1 - Returns a JSON response of an array containing objects for each result row

Update

1 - Performs the provided update (via an UPDATE query) on the record with the provided ID

1 - returns a JSON response of { "success": true }

Delete

1 - Performs a DELETE query which deletes the record with the provided ID

1 - returns a JSON response of { "success": true }
Front-End

1 - Includes UI for making AJAX requests to each of the four endpoints

1 - That UI somehow displays the server's response (this can be as simple converting the JSON into a string and then alerting that string, or it could use more advanced front-end code, such as DOM manipulation)

Submission
Click on the blue button in the top right corner to submit the GitHub URL for your assignment.

# How to run ?
```bash
npm run start
```
### or

```bash
npm start
```
