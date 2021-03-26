-- +goose Up
CREATE TABLE IF NOT EXISTS public.oauth_clients
(
    id UUID NOT NULL DEFAULT uuid_generate_v1(),
    user_id UUID,
    name character varying(100) NOT NULL,
    secret character varying(100),
    provider character varying(100),
    redirect text,
    password_client boolean NOT NULL DEFAULT false,
    revoked boolean NOT NULL DEFAULT false,
    created_at timestamp without time zone NOT NULL DEFAULT NOW(),
    updated_at timestamp without time zone NOT NULL DEFAULT NOW(),
    deleted_at timestamp without time zone,
    CONSTRAINT oauth_clients_pkey PRIMARY KEY (id)
);
-- +goose Down
DROP TABLE public.oauth_clients;