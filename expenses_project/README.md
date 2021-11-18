# Expenses Tracker app

### Here are the major parts of the app:

- A web application written in Sinatra that will receive incoming HTTP requests (to add new expenses or search for existing ones).
- A database layer using Sequel to store expenses between requests.
- A set of Ruby objects to represent expenses and glue the other pieces together.

Beginning with acceptance specs that drive the entire app from the outermost layer, the HTTP request/response cycle.
