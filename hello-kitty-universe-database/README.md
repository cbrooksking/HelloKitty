# Hello Kitty Universe Database

A minimal PostgreSQL schema for a small example database representing the
"Hello Kitty" universe, plus a Docker Compose setup for local development.

## Contents

- `hello_kitty_universe_postgres.sql` — SQL schema (creates `families`,
  `characters`, `items`).
- `docker-compose.yml` — Postgres 15 service with healthcheck.
- `.env.example` — template for required environment variables.

## Requirements

- Docker (with the Compose v2 plugin: `docker compose ...`)
- Optional, for local (non-Docker) use: PostgreSQL 15+

## Quick start (Docker)

1. Copy the env template and edit the password if you like:

   cp .env.example .env

2. Start the database:

   docker compose up -d

3. Wait for the healthcheck to pass:

   docker compose ps

4. Connect and verify the schema loaded:

   docker compose exec db psql -U hk_user -d hello_kitty_universe -c '\dt'

   You should see three tables: families, characters, items.

## Re-running the schema

The SQL file is mounted into /docker-entrypoint-initdb.d/, which only runs
on a fresh data volume. To reload it:

   docker compose down -v   # WARNING: deletes all data
   docker compose up -d

## Manual (non-Docker) usage

   createdb hello_kitty_universe
   psql -d hello_kitty_universe -f hello_kitty_universe_postgres.sql

## Schema overview

- families   — groupings (e.g. the Kitty family).
- characters — residents; optional FK to families (ON DELETE SET NULL).
- items      — belongings owned by a character (ON DELETE CASCADE).

## Notes

- .env is git-ignored. Commit .env.example instead.
- Default credentials in .env.example are for local development only.
