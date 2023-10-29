SELECT 
    -- PK 
    {{ dbt_utils.generate_surrogate_key(['album_id', 'album_name','artist_id']) }} as album_key,
    album_name,
    album_type,
    available_markets,
    release_date,
    total_tracks
FROM {{ref('int_albums')}}