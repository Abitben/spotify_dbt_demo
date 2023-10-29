SELECT 
    --- PK and FK 
    distinct(track_id) as track_id,
    -- ambigous so renaming
    track as track_name,
    ---rename, ambigous with artist table otherwise
    CAST(popularity as INT64) as track_popularity

--- call a source ?      
FROM 
    batch-1414.raw_data_spotify.raw_tracks_pop