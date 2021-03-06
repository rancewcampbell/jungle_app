# Jungle

Jungle is a mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. The project mimicked being given an existing code base and then adding features to that codebase. This is my first interaction with Ruby and specifically Rails. Some of the features I added to the project were enhancing the order details view to be more specific, user and admin authentication, and adding automated testing to many of these features. Browse through the repo and take a look!

## Jungle Homepage

![homepage](https://github.com/rancewcampbell/jungle_app/blob/master/app/assets/images/home.png)

## Jungle Cart/Checkout

![cart/checkout](https://github.com/rancewcampbell/jungle_app/blob/master/app/assets/images/cart.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
