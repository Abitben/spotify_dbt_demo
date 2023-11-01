---- update not working in dbt

UPDATE spotify-dbt-demo-403617.dbt_demo_staging.stg_tracks_pop
SET track_popularity = 4
WHERE track_name = "Der Bierholer"

