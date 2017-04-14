# README

What I did:

Firstly I set up API using Ruby on Rails. I created the database, scaffolded the User, Trip, Airport and Comment models and created two join tables; one for the user-trip and another for the airport-trip.  I then added serializers and relationships to theses models.  

As I added the serialisers after scaffolding, I had to add attributes as well as the relationships to the serialisers .


*****had to add attributes to serialisers as well  -check password_digest is right

I then added validations to the user model so that the username must always be present and the email is unique.

Seeds
  - lat and lng are integers but are not accurate!!!

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
