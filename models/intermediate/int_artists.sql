SELECT
    artist_id,
    artist_name,
    artist_genres,
    sp_followers,
    artist_popularity
FROM 
    {{ref('stg_artists')}}