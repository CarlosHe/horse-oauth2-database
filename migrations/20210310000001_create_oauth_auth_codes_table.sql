-- +goose Up
CREATE TABLE IF NOT EXISTS public.oauth_auth_codes
(
    id character varying(100) NOT NULL,
    user_id UUID NOT NULL,
    client_id UUID NOT NULL,
    scopes text,
    revoked boolean NOT NULL DEFAULT false,
    expires_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL DEFAULT NOW(),
    updated_at timestamp without time zone NOT NULL DEFAULT NOW(),
    deleted_at timestamp without time zone,
    CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id)
);
-- +goose Down
DROP TABLE public.oauth_auth_codes;