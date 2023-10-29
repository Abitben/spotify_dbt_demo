SELECT 
    --- PK and FK 
    distinct(track_id) as track_id,
    -- ambigous so renaming
    track as track_name,
    ---rename, ambigous with artist table otherwise
    CAST(popularity as INT64) as track_popularity
FROM {{source('raw_sources','raw_tracks_pop')}}