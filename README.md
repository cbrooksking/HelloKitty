# Hello Kitty Universe Database

**Purpose:** A small example PostgreSQL database modeling the Hello Kitty
universe. It tracks families, characters, and the items they own — a
minimal, extensible schema suitable for learning, demos, or as a starting
point for a larger project.

## Contents

- `hello_kitty_universe_postgres.sql` — PostgreSQL schema
  (creates `families`, `characters`, `items`).
- `docker-compose.yml` — Postgres 15 service with healthcheck.
- `.env.example` — template for required environment variables.
- `erd/hello_kitty_erd.md` — entity-relationship diagram and notes.

## Quick start (Docker)

    cp .env.example .env
    docker compose up -d
    docker compose ps
    docker compose exec db psql -U hk_user -d hello_kitty_universe -c '\dt'

You should see three tables: `families`, `characters`, `items`.

## Manual (non-Docker) usage

Requires PostgreSQL 15+ installed locally.

    createdb hello_kitty_universe
    psql -d hello_kitty_universe -f hello_kitty_universe_postgres.sql

## Schema overview

- **families** — groupings (e.g. the Kitty family). `name` is unique.
- **characters** — residents. Optional FK to `families`
  (`ON DELETE SET NULL`).
- **items** — belongings owned by a character
  (`ON DELETE CASCADE`).

See `erd/hello_kitty_erd.md` for the full ERD.

## Notes

- The `.env` file is git-ignored; commit `.env.example` instead.
- The init script only runs on a fresh data volume. To reload:

      docker compose down -v
      docker compose up -d

  (This deletes all data.)
