SELECT 
    --- GENERATE PK
    {{ dbt_utils.generate_surrogate_key(['artist_id']) }} as artist_key,
    artist_name,
    artist_genres,
    sp_followers,
    artist_popularity
FROM {{ ref('int_artists') }}