CREATE TABLE olympic_athlete_events (
    edition TEXT,
    edition_id INTEGER,
    country_noc TEXT,
    sport TEXT,
    event TEXT,
    result_id INTEGER,
    athlete TEXT,
    athlete_id INTEGER,
    pos TEXT,
    medal TEXT,
    isTeamSport BOOLEAN
);

COPY olympic_athlete_events
FROM 'C:\Users\LAPTO\Downloads\archive (2)\Olympic_Athlete_Event_Details.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');