SELECT 
    --- PK
    distinct(track_id) as track_id,
    --- FK
    album_id,
    --- Column not clear, renaming
    track as track_name,
    artist,
    artist_id,
    CAST(disc_number as INT64) as disc_number,
    CAST(track_number as INT64) as track_number,
    CAST(explicit as BOOLEAN) as explicit,
    --- not clear, renamed to track_duration
    duration as track_duration
FROM {{source('raw_sources','raw_albums_tracks')}}