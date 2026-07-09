# Lab 12: Query Data in a KQL Database

**Source:** [MS Learn - mslearn-fabric, Lab 12](https://microsoftlearning.github.io/mslearn-fabric/Instructions/Labs/12-query-data-in-kql-database.html)

## What this lab covers

- Creating an **Eventhouse** in a Fabric workspace using the built-in Real-Time Intelligence sample (`RTISample`), which auto-provisions a KQL database and a `Bikestream` table
- Querying the KQL database using the default **KQL queryset**, starting from sample queries and modifying them
- Understanding core Kusto Query Language (KQL) syntax, including the pipe (`|`) operator used to chain query operations
- Using the **T-SQL endpoint** to run a Transact-SQL query against the same KQL database — useful for tools/systems that don't natively support KQL
- Recognizing the boundary between KQL and T-SQL support: the T-SQL endpoint doesn't support DDL (create/alter/drop tables) or DML (insert/update/delete), only read queries

## Notes / things I had to work through

- Confirmed that KQL Querysets don't have a built-in "save query + results together" experience the way a Spark Notebook does — query text and results are handled separately, so I copied query text manually for backup rather than relying on an export feature.
- KQL is read-only by design (unlike SQL, which is read-write) — this shapes how it's used: purely for querying/analyzing data, not modifying it.
- Confirmed KQL still supports a useful subset of familiar SQL-style aggregate functions (`count`, `sum`, `avg`, `min`, `max`), which lowered the learning curve coming from a SQL background.

## Queries

See [`queries/kql_queries.kql`](queries/kql_queries.kql) and [`queries/sql_endpoint_query.sql`](queries/sql_endpoint_query.sql) for the actual query text used in this lab.

## Screenshots

*(add screenshots here once captured — e.g. query results grid, eventhouse/database structure)*
