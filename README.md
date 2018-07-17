Piubs
------------

This application was generated initially with the [RailsApp Composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

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
$ docker cp db/db.backup <your_container_id>:db.backup
$ docker exec -it <your_container_id> bash
$ pg_restore -U <username> -d <dbname> -1 db.backup
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
