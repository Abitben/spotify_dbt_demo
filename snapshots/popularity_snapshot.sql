{% snapshot popularity_snapshot %}

{{
    config(
      target_schema='dbt_snapshots',
      unique_key='track_id',
      strategy='check', 
      check_cols='all' 
    )
}}

select * from {{ ref("stg_tracks_pop") }}

{% endsnapshot %} 