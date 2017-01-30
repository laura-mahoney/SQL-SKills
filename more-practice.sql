-- Include your solutions to the More Practice problems in this file.



-- Insert a Brand

INSERT INTO brands VALUES('sub', 'Subaru', '1953', 'Tokyo, Japan', NULL);


-- Insert Models

INSERT INTO models (year, brand_id, name)
    VALUES('2015', 'che', 'Chevrolet Malibu');

INSERT INTO models (year, brand_id, name)
    VALUES('2015', 'sub', 'Subaru Outback');


-- Create an Awards Table

CREATE TABLE award(
id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL,
year INTEGER,
winner_id VARCHAR(30) NULL
REFERENCES brands(brand_id)
);

-- Insert Awards
INSERT INTO award (name, year, winner_id)
SELECT 'IIHS Safety Award', 2015, brand_id
FROM brands WHERE name = 'Chevrolet';


INSERT INTO award (name, year, winner_id)
SELECT 'IIHS Safety Award', 2015, brand_id
FROM brands WHERE name = 'Subaru';

INSERT INTO award (name, year, winner_id)
VALUES ('Best In Class', 2015, NULL);