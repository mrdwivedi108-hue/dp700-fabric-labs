# Lab 09: Real-Time Analytics with Eventstream

**Source:** [MS Learn - mslearn-fabric, Lab 09](https://microsoftlearning.github.io/mslearn-fabric/Instructions/Labs/09-real-time-analytics-eventstream.html)

## What this lab covers

- Building an **Eventstream** pipeline that ingests a live bicycle-rental data stream (`Bicycle_data-stream`) from a source (`Bicycles`)
- Applying a **GroupBy (Tumbling window)** transformation operator inline within Eventstream to aggregate `Sum of No_Bikes` by street, before the data ever lands in storage
- Routing the same stream to two destinations simultaneously: an **Eventhouse** (for querying/analytics) and a second Eventhouse (`Eventhouse1`)
- Confirming ingestion into the Eventhouse's KQL database, and reviewing the auto-generated **Data Activity Tracker** (ingestion rate, row counts, compressed vs. original size)
- Querying the resulting `bike-by-street` table with KQL, including a `summarize ... by` aggregation combined with a multi-column `sort by`

## Notes / things I found useful

- This lab shows the difference between aggregating **in-stream** (via Eventstream's GroupBy/Tumbling window operator, before data lands) versus aggregating **after ingestion** (via a KQL `summarize` query on the landed table) — both are valid, and the choice depends on whether you need the pre-aggregated view available in real time to multiple destinations, or whether ad-hoc post-hoc analysis is enough.
- The Eventhouse table view surfaces genuinely useful operational metrics out of the box — compressed (9.8KB) vs. original (61.3KB) size, rows ingested in the last 24h, and last ingestion timestamp — without any manual setup.
- Confirmed `sort by` in KQL supports multiple sort keys with independent directions in one clause (`sort by Window_End_Time desc, Street asc`), directly mirroring SQL's multi-column `ORDER BY` syntax.

## Screenshots

**Eventstream pipeline: source → GroupBy transformation → dual Eventhouse destinations, with live data preview:**
![Eventstream pipeline](screenshots/eventstream_pipeline.png)

**Eventhouse table (`bike-by-street`) showing ingested, aggregated data and activity tracker:**
![Eventhouse table ingestion](screenshots/eventhouse_table_ingestion.png)

**KQL Queryset: `summarize` + multi-column `sort by` query result:**
![Queryset result](screenshots/queryset_result.png)
