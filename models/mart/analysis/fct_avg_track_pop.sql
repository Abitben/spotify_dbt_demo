--- Which artists has the avg_track popularity higher
SELECT
artists.artist_name,
AVG(tracks.track_popularity) as avg_track_pop

FROM {{ref('fct_post_dubstep')}} fct
LEFT JOIN {{ref('dim_tracks')}} tracks ON fct.track_key = tracks.track_key
LEFT JOIN {{ref('dim_artists')}} artists ON fct.artist_key = artists.artist_key

GROUP BY artists.artist_name
ORDER BY avg_track_pop DESC