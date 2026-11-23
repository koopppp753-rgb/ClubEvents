# ClubEvents

A Ruby on Rails web application for managing university student club events, supporting user sign-up, login, role-based access (`Student` and `Admin`), and event listings.

## Prerequisites
- Ruby and Bundler installed
- Ruby on Rails installed

## Local Setup & Running Instructions

1. Clone the repository:
   git clone https://github.com/koopppp753-rgb/ClubEvents.git
   cd ClubEvents

2. Install dependencies:
   bundle install

3. Prepare the database:
   rails db:prepare

4. Start the local server:
   rails server

5. Open the application in your browser at:
   http://localhost:3000

## Roles & Usage
- Sign Up / Log In: Create a new account or log in with an existing account.
- Roles: Supports `Student` and `Admin` roles.
- Events: Browse the events list after logging in.
