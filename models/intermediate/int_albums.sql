SELECT
    {{ dbt_utils.generate_surrogate_key(['artist_id']) }} as album_key,
    album_id,
    artist_id,
    album_name,
    album_type,
    available_markets,
    release_date,
    total_tracks
FROM 
    {{ref('stg_albums')}}