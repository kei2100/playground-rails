# README

### rake task

```bash
# task一覧
$ bin/rake -T

# DB関連
$ bin/rake db:create
$ bin/rake db:drop
$ bin/rake db:seed

## migration
$ bin/rake db:migrate

## create DB, load schema and seeds 
$ bin/rake db:setup  
$ bin/rake db:reset
```

### rails gen
```bash
# model
$ bin/rails generate model Article title:string text:text
$ bin/rails generate migration AddColumnToUser user_id:string
```

### spring

```bash
# status 一覧
$ bundle ex spring status
# stop
$ bundle ex spring stop
```

### Docker

```bash
$ docker build -t playground-rails .
$ docker run -it -v $(pwd)/db:/app/db -v $(pwd)/log:/app/log -p 3000:3000 playground-rails:latest /app/bin/rails s
```

### sidekiq

```bash
$ bundle ex sidekiq
```
