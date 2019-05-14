## Features
 - Ruby on Rails
 - Webpack via Webpacker gem
 - React with Redux

### Install required tools and dependencies:
 - [Docker](https://www.docker.com/community-edition#/download)
 - [Homebrew](https://brew.sh/) if you're on OSX
 - PostgreSQL client - `brew install postgresql` or `apt-get install postgresql-client`
 - [RVM](https://rvm.io/) - `rvm use`
 - [NVM](https://github.com/creationix/nvm) - `nvm use`
 - Yarn - `npm install -g yarn`
 - Bundler - `gem install bundler`

### Run setup script

```bash
bin/setup
```

## Development

To start the project just type:

```bash
bin/start
```

### Hot Module Replacement

Before firing up the rails server you need to start `webpack-dev-server`

```bash
bin/webpack-dev-server
```

## Running tests

Before running the test suite remember to fire up docker-compose (if it's not running already):

```bash
docker-compose up -d
```

And after that you can just use plain normal rspec:

```bash
bundle exec rspec
```
