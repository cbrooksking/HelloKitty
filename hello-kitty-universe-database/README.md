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

   ```bash
   cp .env.example .env
