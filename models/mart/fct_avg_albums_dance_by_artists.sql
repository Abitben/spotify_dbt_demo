--- Which albums has the avg_track popularity higher
WITH avg_album_danceability AS 
    (SELECT
    albums.album_key,
    AVG(tracks.danceability) as avg_track_danceability

    FROM {{ref('fct_post_dubstep')}} fct
    LEFT JOIN {{ref('dim_tracks')}} tracks ON fct.track_key = tracks.track_key
    LEFT JOIN {{ref('dim_albums')}} albums ON fct.album_key = albums.album_key

    GROUP BY albums.album_key
    ORDER BY avg_track_danceability DESC)

SELECT 
    artists.artist_name,
    AVG(albums_grouped.avg_track_danceability) as avg_albums_danceability,
    COUNT(distinct(fct.album_key)) as nb_albums
FROM {{ref('fct_post_dubstep')}} fct
LEFT JOIN {{ref('dim_artists')}} artists ON fct.artist_key = artists.artist_key
INNER JOIN avg_album_danceability as albums_grouped ON fct.album_key = albums_grouped.album_key

GROUP BY artists.artist_name
ORDER BY avg_albums_danceability DESC