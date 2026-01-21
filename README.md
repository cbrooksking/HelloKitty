# HelloKitty
Project Title:
Hello Kitty Universe Database

Purpose:
This database organizes and tracks data about the Hello Kitty universe, including characters, merchandise, events, and fan interactions. It is designed for use by enthusiasts, businesses, or researchers interested in managing Hello Kitty-related data.


## PostgreSQL schema

A PostgreSQL-compatible schema file is provided at [hello-kitty-universe-database/hello_kitty_universe_postgres.sql](hello-kitty-universe-database/hello_kitty_universe_postgres.sql).

To create and load the database locally:

```bash
createdb hello_kitty_universe
psql -d hello_kitty_universe -f hello-kitty-universe-database/hello_kitty_universe_postgres.sql
```

This file complements the MySQL schema at [hello-kitty-universe-database/hello_kitty_universe.sql](hello-kitty-universe-database/hello_kitty_universe.sql).

