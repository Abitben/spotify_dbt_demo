SELECT
    album_id,
    artist_id,
    album_name,
    album_type,
    available_markets,
    release_date,
    total_tracks
FROM 
    {{ref('stg_albums')}}