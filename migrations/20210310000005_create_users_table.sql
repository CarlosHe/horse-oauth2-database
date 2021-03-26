-- +goose Up
CREATE TABLE IF NOT EXISTS public.users
(
    id UUID NOT NULL DEFAULT uuid_generate_v1(),
    name character varying(196) NOT NULL,
    username character varying(196) NOT NULL,
    password character varying(196) NOT NULL,
    user_verified_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL DEFAULT NOW(),
    updated_at timestamp without time zone NOT NULL DEFAULT NOW(),
    deleted_at timestamp without time zone,
    CONSTRAINT unique_username UNIQUE (username),
    CONSTRAINT users_pkey PRIMARY KEY (id)
);
-- +goose Down
DROP TABLE public.users;