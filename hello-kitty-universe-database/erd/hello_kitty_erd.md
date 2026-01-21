# Hello Kitty ERD

Simple Entity-Relationship Diagram (Mermaid)

```mermaid
erDiagram
    FAMILIES ||--o{ CHARACTERS : has
    CHARACTERS ||--o{ ITEMS : owns

    FAMILIES {
      int id PK
      string name
      text description
    }
    CHARACTERS {
      int id PK
      string name
      string species
      date birthday
      int family_id FK
      text bio
    }
    ITEMS {
      int id PK
      string name
      int owner_id FK
      text description
    }
```

Notes:
- `family_id` is nullable (characters may be unassociated).
- Deleting a family sets `family_id` to NULL for members.
- Deleting a character cascades to their items.
