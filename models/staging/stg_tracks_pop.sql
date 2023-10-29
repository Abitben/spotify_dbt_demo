SELECT 
    --- PK and FK 
    track_id,
    -- ambigous so renaming
    track as track_name,
    ---rename, ambigous with artist table otherwise
    popularity as track_popularity
FROM {{source('raw_sources','raw_tracks_pop')}}