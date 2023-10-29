SELECT 
    -- generate pk for fct
     --- {{ dbt_utils.generate_surrogate_key(['artist_id', 'album_id', 'track_id']) }} as fct_key,
    *

FROM {{ref('int_artists')}}