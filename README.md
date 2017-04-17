# README

What I did:

Firstly I set up API using Ruby on Rails. I created the database, scaffolded the User, Trip, Airport and Comment models and created two join tables; one for the user-trip and another for the airport-trip.  I then added serializers and relationships to theses models.  

As I added the serialisers after scaffolding, I had to add attributes as well as the relationships to the serialisers .

I then added validations to the user model so that the username must always be present and the email is unique.

Seeds
  - added users, airports and 2 trips.

Fleshed out front-end: new, show, index, edit pages, login ages register pages.

Added skyscanner api:  added new controller,

added the image uploader to the login

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
