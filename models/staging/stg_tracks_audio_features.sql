SELECT
    ---- PK and FK
    distinct(track_id) as track_id,
    CAST(danceability as FLOAT64) as danceability,
    CAST(energy as FLOAT64) as energy,
    key as key_sign,
    CAST(loudness as FLOAT64) as loudness,
    mode,
    CAST(speechiness as FLOAT64) as speechiness,
    CAST(acousticness as FLOAT64) as acousticness,
    CAST(instrumentalness as FLOAT64) as instrumentalness,
    CAST(liveness as FLOAT64) as liveness,
    CAST(valence as FLOAT64) as valence,
    CAST(tempo as FLOAT64) as tempo,
    --- renaming, not clear
    CAST(duration_ms as FLOAT64) as track_duration,
    CAST(time_signature as INT64) as time_signature,
FROM {{source('raw_sources','raw_tracks_audio_features')}}