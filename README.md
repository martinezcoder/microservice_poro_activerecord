## Plain ruby code application with Rails taste

We usually have to create plain ruby code a database dependency. This code is an starting point for this.

The magic in this repo consists in:

* You configure your database in a `config/database.yml` file like when you are on Rails.
* You add your migrations in the folder `db/migrate/` like when you are on Rails.
* You can add your __seeds__ in the file `db/seeds.rb` like when you are on Rails
* It includes the power of database Rake tasks for ActiveRecord library so you can run `rake db:migrate` and an automatic `schema.rb` file will be created.

BUT you will be using just PLAIN ruby code!

### Also, a Microservice starting point

Furthermore, whether you need to create an API, you can use this repo as an starting point.

In fact, the demo prepared in this repo consists in a web microservice including a __sinatra__ endpoint which will respond with data persisted in the database.

Follow next steps to start the web microservice.

### Instalation

```sh
docker-compose build
docker-compose run app rake db:create db:migrate
docker-compose run app rake db:seed
```

#### Run demo

Follow the instalation steps and then:

```sh
docker-compose up
```

Open a web browser and visit http://localhost:8888/

You will receive a JSON response with the data created throw the `db/seeds.rb` file.

### Take a look at the available rake tasks

```sh
docker-compose run web rake -T
```

### How to add a new migration

Just create a migration file in 'db/migrate' folder, using numerical order at the beginning of the file. E.g., take a look a the already existent file `001_create_table_pets.rb`

### Run migrations

```sh
docker-compose run web rake db:create db:migrate db:seed
```