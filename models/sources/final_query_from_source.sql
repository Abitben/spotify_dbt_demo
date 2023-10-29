

SELECT
    artists.name,
    AVG(tracks_pop.popularity) as avg_tracks_pop
FROM 
    {{source('raw_sources','raw_artists')}} artists
    LEFT JOIN {{source('raw_sources','raw_albums')}} albums ON albums.artist_id = artists.artist_id
    LEFT JOIN {{source('raw_sources','raw_albums_tracks')}} tracks ON tracks.album_id = albums.album_id 
    LEFT JOIN batch-1414.raw_data_spotify.raw_tracks_pop tracks_pop ON tracks_pop.track_id = tracks.track_id

GROUP BY 
    artists.name

ORDER BY
    avg_tracks_pop DESC