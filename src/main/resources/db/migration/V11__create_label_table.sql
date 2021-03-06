CREATE TABLE label
(
    id      uuid PRIMARY KEY NOT NULL,
    name    VARCHAR(200)     NOT NULL,
    card_id uuid             NOT NULL
        CONSTRAINT label_card_id_fk REFERENCES card (id),
    user_id              uuid
        CONSTRAINT label_user_id_fk REFERENCES "user" (id)
);