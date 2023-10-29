SELECT
    {{ dbt_utils.generate_surrogate_key(['artist_id']) }} as artist_key,
    artist_id,
    artist_name,
    artist_genres,
    sp_followers,
    artist_popularity
FROM 
    {{ref('stg_artists')}}