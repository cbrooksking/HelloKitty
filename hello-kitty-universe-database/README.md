Hello Kitty Universe Database

This directory contains a minimal SQL schema and an ERD for a small example database representing the "Hello Kitty" universe.

Contents:
- `hello_kitty_universe.sql` - SQL schema (creates `families`, `characters`, `items`).
- `erd/hello_kitty_erd.md` - simple ERD diagram and notes.

Usage:
1. Load the SQL into MySQL/MariaDB:

```bash
mysql -u <user> -p < hello_kitty_universe.sql
```

2. Inspect the ERD in `erd/hello_kitty_erd.md`.
