CREATE TABLE public.foodprices
(
  adm0_id integer,
  adm0_name text,
  adm1_id integer,
  adm1_name text,
  mkt_id integer,
  mkt_name text,
  cm_id integer,
  cm_name text,
  cur_id integer,
  cur_name text,
  pt_id integer,
  pt_name text,
  um_id integer,
  um_name text,
  mp_month integer,
  mp_year integer,
  mp_price double precision,
  mp_commoditysource text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.foodprices
  OWNER TO eha;

