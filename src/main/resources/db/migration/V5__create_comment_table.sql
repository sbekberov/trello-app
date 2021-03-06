CREATE TABLE comment
(
    id           uuid PRIMARY KEY,
    text         VARCHAR(200) NOT NULL,
    updated_by   varchar(25)  NOT NULL,
    created_by   varchar(25)  NOT NULL,
    created_date TIMESTAMP    NOT NULL DEFAULT now(),
    updated_date TIMESTAMP,
    card_id      uuid         NOT NULL
        CONSTRAINT comment_card_id_fk REFERENCES card (id)
);