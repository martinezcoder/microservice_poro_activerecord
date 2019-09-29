## Plain ruby code application

We usually have to create plain ruby code or microservices using a database dependency. This code is an starting point for this. The magic in this repo consists in including the power of Rake tasks and ActiveRecord library.

E.g., whether you need to create an API, you can start with the code in `bin/serve` where you will find a sinatra web endpoint responding the content of a database table.

### Instalation

```sh
docker-compose build
```

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