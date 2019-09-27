## Use ActiveRecord in plain ruby code

We usually have to create plain ruby code needing a database dependency. This code is an starting point for this.

It uses the power of Rails tasks and ActiveRecord library, using just what it is really needed.

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

###