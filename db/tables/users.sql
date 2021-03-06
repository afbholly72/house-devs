CREATE TABLE users (
    user_id varchar PRIMARY KEY,
    locale varchar NOT NULL,
    first_home boolean,
    category varchar NOT NULL,
    beds integer,
    subsidy boolean,
    income numeric NOT NULL,
    price_weight numeric DEFAULT 1.0,
    amenities_weight numeric,
    education_weight numeric,
    transportation_weight numeric,
    prop_type varchar REFERENCES prop_types(type),
    age_range integer REFERENCES ages(age_id),
    CHECK (amenities_weight >= 0.0 AND amenities_weight <= 100.0),
    CHECK (education_weight >= 0.0 AND education_weight <= 100.0),
    CHECK (transportation_weight >= 0.0 AND transportation_weight <= 100.0),
    CHECK (age_range >= 0 AND age_range <= 2)
);
