-- +goose Up
CREATE TABLE IF NOT EXISTS public.oauth_refresh_tokens
(
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL DEFAULT false,
    expires_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL DEFAULT NOW(),
    updated_at timestamp without time zone NOT NULL DEFAULT NOW(),
    deleted_at timestamp without time zone,
    CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id)
);
-- +goose Down
DROP TABLE public.oauth_refresh_tokens;