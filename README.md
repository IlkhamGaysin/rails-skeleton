# Rails Sekeleton
[![Build Status](https://semaphoreci.com/api/v1/ilkhamgaysin/rails-skeleton/branches/master/shields_badge.svg)](https://semaphoreci.com/ilkhamgaysin/rails-skeleton)
[![Code Climate](https://codeclimate.com/github/IlkhamGaysin/rails-skeleton.png)](https://codeclimate.com/github/IlkhamGaysin/rails-skeleton)

## Project description
Rails Skeleton is the base Rails application template used for creating apps from scratch.
It's based on Rails 5 and Ruby 2.4.0.

## Dependencies

Information about external dependencies (redis, mongo, postgres, etc).

- PostgreSQL 9.5
- Ruby 2.4.0
- PhantomJS
- Rails 5

### Bootstrap application

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

4. Run test and quality suits to make sure all dependencies are satisfied and applications works correctly before making changes.

  ```bash
  bin/ci
  ```

5. Run app

  ```bash
  bin/server
  ```

6. Update README

  Do not forget to update application `README.md` file with detailed information based on the
  existing template.

  ```bash
  mv doc/README_TEMPLATE.md README.md
  # update README.md
  git commit -am "Update README.md"

## Scripts

* `bin/setup` - setup required gems, clone example files, run seeds and migrate db if needed
* `bin/update` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman and other check for the app
* `bin/ci` - should be used in the CI to run specs

## Documentation & Examples

Where is documentation and examples (e.g. `./docs`)?

## Continuous Integration

Wating for integration...

## Servers

Wating for integration...

## Deployment

Wating for integration...
