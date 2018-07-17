Piubs
================

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby >= 2.3.1
- Rails 5.2.0
- PostreSQL 9.6.*
- Docker 18.03.* (optional)

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).  
Learn more about [Installing Docker CE](https://docs.docker.com/install/linux/docker-ce/ubuntu/).

Getting Started - Using Rails
---------------
- Install application requirements listed above
- clone project

```bash
$ git clone https://github.com/mgfzemor/piubs_apoio.git
```

- Install gems

```bash
$ cd piubs_apoio
$ bundle install
```

- Configure you database

Set your DB configuration in `/config/database.yml`

- Create tables

```bash
$ rake db:create db:migrate
```

- Restore the DB

Restore your database `piubs_apoio` from file `/db/db.backup`

- Start Server

```bash
$ rails s
```

- Drink a cup of tea and enjoy it in `localhost:3000`;)

Getting Started - Using Docker
---------------
- Install application requirements listed above
- clone project

```bash
$ git clone https://github.com/mgfzemor/piubs_apoio.git
```

- Configure you database

Set your DB configuration in `/config/database.yml`

- Run docker-compose build

```bash
$ docker-compose build
```

- Restore the DB `piubs_apoio` from `db/db.backup` to the container

```bash
$ docker cp db/db.backup <your_container_id>:db.backup
$ docker exec -it <your_container_id> bash
$ pg_restore -U <username> -d <dbname> -1 db.backup
```

- Start the containers

```bash
$ docker-compose up
```

- Drink a cup of tea and enjoy it in `localhost:3000` ;)

Credits
-------
- mgfzemor

License
-------
