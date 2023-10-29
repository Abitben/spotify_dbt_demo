--- Which artists has a track with a good track_pop and a min_artist_pop
SELECT
artists.artist_name,
MAX(tracks.track_popularity) as max_track_pop,
MIN(artists.artist_popularity) as min_artist_pop

FROM {{ref('fct_post_dubstep')}} fct
LEFT JOIN {{ref('dim_tracks')}} tracks ON fct.track_key = tracks.track_key
LEFT JOIN {{ref('dim_artists')}} artists ON fct.artist_key = artists.artist_key

GROUP BY artists.artist_name
ORDER BY max_track_pop DESC, min_artist_pop ASC