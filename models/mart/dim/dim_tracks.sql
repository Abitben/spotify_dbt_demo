SELECT
    --- GENERATE PK
    {{ dbt_utils.generate_surrogate_key(['track_id']) }} as track_key,
    track_name,
    disc_number,
    track_number,
    explicit,
    track_duration,
    track_popularity,
    danceability,
    energy,
    key_sign,
    loudness,
    mode,
    speechiness,
    acousticness,
    instrumentalness,
    liveness,
    valence,
    tempo,
    time_signature
FROM {{ref('int_tracks')}}