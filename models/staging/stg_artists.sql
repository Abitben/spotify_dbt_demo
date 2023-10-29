SELECT 
    --- PK
    artist_id,
    --- Name not clear, renaming to artist_name
    name as artist_name,
    --- genres not clear, renaming to artist_genres and split into an array
    SPLIT(REPLACE(REPLACE(REPLACE(genres , "[", ""),"]",""),"'", ""),",") as artist_genres,
    CAST(sp_followers as INT64) as sp_followers,
    CAST(artist_popularity as INT64) as artist_popularity
FROM {{source('raw_sources','raw_artists')}}