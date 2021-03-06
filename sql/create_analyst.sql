﻿CREATE ROLE analyst NOSUPERUSER NOCREATEDB
NOCREATEROLE NOINHERIT LOGIN PASSWORD 'analyst2016' VALID UNTIL 'infinity';

GRANT CONNECT ON DATABASE eha TO analyst;

GRANT USAGE ON SCHEMA public TO analyst;

GRANT SELECT ON public.foodprices TO analyst;