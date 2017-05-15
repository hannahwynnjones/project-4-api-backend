# README

####Approach/ how it works

As an avid traveller, I know how frustrating it is trying to design a trip around the world that keeps within a budget and satisfies everyone of your friends.  My app makes it really easy for a group of friends to join together and figure that out.  Users can login and create a trip leaving from a UK airport.  Once created, the user can add 'legs' to the trip which grabs live prices from Skyscanner's API.  I then used this data with the Google Maps API to create a route on the map.  Users can then choose to either add further 'legs' or 'go home' (back to the initial airport).  From there, other users can comment on the trip giving feedback and choose to 'attend' if they like the trip too.

####The Build

Firstly I set up API using Ruby on Rails. I created the database, scaffolded the User, Trip, Airport and Comment models and created two join tables; one for the user-trip and another for the airport-trip.  I then added serializers and relationships to theses models.  

As I added the serializers after scaffolding, I had to add attributes as well as the relationships to the serializers .

I then added validations to the user model so that the username must always be present and the email is unique.

I added Seeds for users, airports and 2 trips.  

Fleshed out front-end: new, show, index, edit pages, login ages register pages.

Added Skyscanner api:  added new controller,

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



####Installation and deployment instructions



####Unsolved problems
