Piubs
------------
[![Maintainability](https://api.codeclimate.com/v1/badges/9bffb28c2c0317896636/maintainability)](https://codeclimate.com/github/rafaeelaudibert/piubs_apoio/maintainability)

This application was initially generated with the [RailsApp Composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

**OBS.:** :information_source: **THIS IS NOT GOING ANYWHERE. IT IS JUST AN EXPERIMENTAL REPOSITORY INTENDED TO LEARN ABOUT RAILS/DOCKER/POSTGRES FOR A FUTURE PROJECT** :information_source:

Contributing
-----------

We use [SemVer](https://semver.org/), so feel free to create a pull request with some new feature, so that it can be reviewed by one of the project managers.


Problems? Issues?
-----------

If the application doesn't work as expected, please [report an issue](https://github.com/mgfzemor/piubs_apoio/issues)
and include the diagnostics.





Requirements
-------------

This application requires:

- Ruby >= 2.3.1
- Rails 5.2.0
- PostreSQL 9.6.*

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).  

You may use Docker to hold your information in containers. Learn more about [Installing Docker CE](https://docs.docker.com/install/linux/docker-ce/ubuntu/).




---
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

- Configure you database in `/config/database.yml`

- Create DB tables

```bash
$ rake db:create db:migrate
```

- Restore the DB `piubs_apoio` from `db/db.backup` using `psql` or the [PgAdminIII](https://www.pgadmin.org/download/) GUI.

- Start your local server

```bash
$ rails server -p <your_port>
```

- Drink a cup of tea and enjoy it ;)

- The next time, you just need to run `rails server -p <your_port>`


---
Getting Started - Using Docker
---------------
- Install application requirements listed above, plus Docker >= 13.1.0
- Clone project

```bash
$ git clone https://github.com/mgfzemor/piubs_apoio.git
```
- Install gems

```bash
$ cd piubs_apoio
$ bundle install
```

- Configure you database in `/config/database.yml`

- Create the app image

```bash
$ docker-compose build
```
- Start the containers

```bash
$ docker-compose up
```

- Restore the DB `piubs_apoio` from `db/db.backup` to the container

```bash
$ docker cp db/backup.sql <your_rails_container_id>:backup.sql
$ docker exec -it <your_rails_container_id> sh -c "psql -d piubs_apoio -f backup.sql -U postgres"
```

- *Obs: If you already had an old database you must run this commands before, making the database restore. You must be inside of `piubs_apoio` database inside of the postgres container*

```bash
$ drop schema public cascade;
$ create schema public;
```

- Drink a cup of tea and enjoy it in `localhost:3000` ;)

- The next time, you just need to run `docker-compose up`

---
Credits
-------
- mgfzemor
- rafaeelaudibert
- felipefcomerlato

License
-------
