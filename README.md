![](https://img.shields.io/badge/Microverse-blueviolet)

# Blog app


## Description

> Blogger allow users to edit blogs anywhere through the app and either publish the blogs or save them as drafts, we have created a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts, add validations to the models, create specs for them.


## Getting Started

### Prerequisites

- Install git.
- Install Postgres.
- Install rails


### Clone this repository

```bash
$ git clone https://github.com/joskalenda/blog-app.git
$ cd blog-app
```

### Starting up the Web Server

```bash
$   rails s # or
$   rails server # or
```


#### Listing Existing Routes

- You can now visit `http://localhost:3000` to view your new website!

 You can also execute the `rails routes` command in your terminal to produce the same output.



#### Generate rspec

- At the first you need to include those lines in your Gemfile

```bash
  gem 'rails-controller-testing'
  gem 'rspec-rails'
```

#### Install RSpec

```bash
$  rails generate rspec:install
```
- This should generate some files that you will need to run your tests and should give us a Controller and a View

- Then run:

```bash
$  rspec spec     # to test if your tests are passed
```

#### Generate controllers

```bash
  $  rails generate controller home index show
  $  rails generate controller users index show
  $  rails generate controller posts index show
```

#### Generate model and migration files

```bash
  $  rails generate model User name  photo bio:text posts_counter:integer  
  $  rails generate model Post  title  text:text comments_counter:integer likes_counter:integer author:references
  $  rails generate model Like author:references post:references 
  $  rails generate model Comments text:text author:references post:references
```


#### Generate Schema

- To push the Migration into the database

```bash
  $   rails db:migrate
```

## Authors

👤 **Jos Kalenda**

- GitHub: [@Joskalenda](https://github.com/joskalenda)
- Twitter [@Joskalenda](https://twitter.com/joskalenda)
- LinkedIn [@Joskalenda](https://www.linkedin.com/in/jos-kalenda)

## 🤝 Contributor


Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/joskalenda/blog-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.