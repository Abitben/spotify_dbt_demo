SELECT
    {{ dbt_utils.generate_surrogate_key(['tracks.track_id']) }} as track_key,
    tracks.track_id,
    tracks.album_id,
    tracks.track_name,
    tracks.artist,
    tracks.artist_id,
    tracks.disc_number,
    tracks.track_number,
    tracks.explicit,
    tracks.track_duration,
    tracks_pop.track_popularity,
    t_features.danceability,
    t_features.energy,
    t_features.key_sign,
    t_features.loudness,
    t_features.mode,
    t_features.speechiness,
    t_features.acousticness,
    t_features.instrumentalness,
    t_features.liveness,
    t_features.valence,
    t_features.tempo,
    t_features.time_signature

FROM {{ref('stg_albums_tracks')}} as tracks
LEFT JOIN {{ref('stg_tracks_pop')}} tracks_pop ON tracks.track_id = tracks_pop.track_id
LEFT JOIN {{ref('stg_tracks_audio_features')}} t_features ON tracks.track_id = t_features.track_id