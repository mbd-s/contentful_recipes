# Sample Contentful recipe app

[![Build Status](https://travis-ci.com/mbd-s/contentful_recipes.svg?branch=master)](https://travis-ci.com/mbd-s/contentful_recipes)

This application consumes data from a single Contentful space (which should
contain recipe entries) and provides two simple views to display it.

## Development setup

First clone the repo and `cd` into the directory:

```
$ git clone https://github.com/mbd-s/contentful_recipes.git
$ cd contentful_recipes
```

Next, install dependencies:

```
$ bundle install
```

The application relies on environmental variables. Copy the
template to a new `env.development` file:
```
$ cp env.template env.development
```

Fill in the values as needed, and then export them to the environment:

```
$ export $(cat env.development | xargs)
```

Now create and migrate the database:

```
$ bundle exec rails db:create
$ bundle exec rails db:migrate
```

Finally, run the server:

```
$ bin/server
```

The application should be running at `http://localhost:3000/`
