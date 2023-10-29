SELECT 
    ---- PK
    album_id,
    --- FK
    artist_id,
    album_name,
    album_type,
    --- Replace brackets and ' sign to split into array
    {{ string_split_custom('available_markets') }} as available_markets,
    
    ---- Some date are not complete
    CASE
        WHEN regexp_contains(release_date, r'^\d{4}$') THEN PARSE_DATE('%Y', release_date)
        ELSE CAST(release_date as DATE) 
    END as release_date,
    CAST(total_tracks as INT64) as total_tracks,
FROM
    {{source('raw_sources','raw_albums')}}