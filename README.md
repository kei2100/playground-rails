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
bin/rails generate model Article title:string text:text
```

### spring

```bash
# status 一覧
$ bundle ex spring status
# stop
$ bundle ex spring stop
```

### sidekiq

```bash
$ bundle ex sidekiq
```
