SELECT 
    -- generate pk for fct
    {{ dbt_utils.generate_surrogate_key(['artists.artist_id', 'albums.album_id', 'tracks.track_id']) }} as fct_key,
    {{ dbt_utils.generate_surrogate_key(['albums.album_id']) }} as album_key,
    {{ dbt_utils.generate_surrogate_key(['artists.artist_id']) }} as artist_key,
    {{ dbt_utils.generate_surrogate_key(['tracks.track_id']) }} as track_key,
FROM {{ref('int_tracks')}} tracks
LEFT JOIN {{ref('int_albums')}} albums ON tracks.album_id = albums.album_id
LEFT JOIN {{ref('int_artists')}} artists ON albums.artist_id = artists.artist_id