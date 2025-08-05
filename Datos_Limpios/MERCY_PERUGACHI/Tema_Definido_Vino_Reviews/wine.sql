create database wine;
use wine;

CREATE TABLE IF NOT EXISTS wine_reviews_json (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID autoincremental para cada reseña
    points INT,                        -- Puntuación del vino
    title VARCHAR(512),                -- Título de la reseña o nombre del vino
    description TEXT,                  -- Descripción completa de la reseña
    taster_name VARCHAR(255) NULL,     -- Nombre del catador (puede ser NULL)
    taster_twitter_handle VARCHAR(255) NULL, -- Twitter del catador (puede ser NULL)
    price DECIMAL(10, 2) NULL,         -- Precio del vino (puede ser NULL)
    designation VARCHAR(255) NULL,     -- Designación del vino (puede ser NULL)
    variety VARCHAR(255),              -- Variedad de uva
    region_1 VARCHAR(255) NULL,        -- Región principal (puede ser NULL)
    region_2 VARCHAR(255) NULL,        -- Sub-región (puede ser NULL)
    province VARCHAR(255),             -- Provincia o estado
    country VARCHAR(255),              -- País
    winery VARCHAR(255)                -- Bodega
);

CREATE TABLE IF NOT EXISTS wine_reviews_csv (
    id INT PRIMARY KEY,             -- La primera columna (índice original) del CSV
    country VARCHAR(255),           -- País de origen del vino
    description TEXT,               -- Descripción larga del vino
    designation VARCHAR(255) NULL,  -- Nombre específico o designación del vino (puede ser NULL)
    points INT,                     -- Puntuación del vino
    price DECIMAL(10, 2) NULL,      -- Precio del vino (puede ser NULL)
    province VARCHAR(255),          -- Provincia o estado donde se produce el vino
    region_1 VARCHAR(255) NULL,     -- Región más específica (puede ser NULL)
    region_2 VARCHAR(255) NULL,     -- Sub-región (a menudo NULL)
    variety VARCHAR(255),           -- Tipo de uva o variedad
    winery VARCHAR(255)             -- Bodega
);

SELECT COUNT(*) FROM wine_reviews_csv;