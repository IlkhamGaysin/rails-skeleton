# Rails Sekeleton
[![CircleCI](https://circleci.com/gh/IlkhamGaysin/rails-skeleton.svg?style=svg)](https://circleci.com/gh/IlkhamGaysin/rails-skeleton)
[![Code Climate](https://codeclimate.com/github/IlkhamGaysin/rails-skeleton.png)](https://codeclimate.com/github/IlkhamGaysin/rails-skeleton)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f242c790e849db75b15d/test_coverage)](https://codeclimate.com/github/IlkhamGaysin/rails-skeleton/test_coverage)

* [Staging](https://rails-skeleton-instance.herokuapp.com/)

## Project description
Rails Skeleton is the base Rails application template used for creating apps from scratch.

## Dependencies

Information about external dependencies (redis, mongo, postgres, etc).

- Ruby 2.6.6
- Rails 5.2

## Bootstrap application

1. Clone application as new project with original repository named "rails-skeleton".

  ```bash
  git clone git@github.com:IlkhamGaysin/rails-skeleton.git --origin skeleton [MY-NEW-PROJECT]
  ```

2. Create your new repo on GitHub and push master into it. Make sure master branch is tracking origin repo.

  ```bash
  git remote add origin git@github.com:[MY-GITHUB-ACCOUNT]/[MY-NEW-PROJECT].git
  git push -u origin master
  ```

3. Run setup script

  ```bash
  bin/setup
  ```

4. Run test and quality suits to make sure that application works correctly before making changes.

  ```bash
  bin/rspec
  ```

5. Run quality checks to make sure that application looks good before making changes.

  ```bash
  bin/quality
  ```

6. Run app

  ```bash
  bin/server
  ```

## Scripts

* `bin/setup` - setup required gems, clone example files, run seeds and migrate db if needed
* `bin/update` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman and other check for the app

## Deployment

The applciaiton is ready to be deployed to [Heroku.com](http://heroku.com) with the following plugins:

* [Heroku Postgres](https://www.heroku.com/postgres) add-on will be used for database.
