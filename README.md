# Product Reviewer

#### Rails Unit, exercise in Ruby, Rails, Routing, Active Record, PostgreSQL - 4.12.18

#### Emily Watkins

## Description

This application is a product reviewer for imported foods, in this case, but can easily be adapted for other applications. The landing page shows featured items and navigation. A user can view all products, their details, and submit reviews and ratings.

## Setup

Clone this repository:

`$ bundle install`

Navigate to http://localhost:3000/

To update database with new values:

`$ rake db:seed`

## Functionality

Current:
* Layout view includes navigation to featured products such as most reviewed, recently added, and domestic, which were achieved using rails scopes.
* User can navigate to a list of all products, which is populated by returning all product names from products table.
* User can see details of the product including price and country of origin as well as reviews.
* User can add a new review and rating.
* Basic test suite

Future:
* Implement more detailed and thorough test suite
* Styling


## Technologies Used

* Ruby
* Rails
* PostgreSQL
* Capybara and rspec for testing
* Faker gem for population of database

## License

Licensed under the MIT License.

Copyright (c) 2018 Emily Watkins
