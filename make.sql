\set SCH tt1

begin;

drop schema if exists :SCH cascade;

create schema :SCH;
set search_path = :SCH, public;

\! find . -maxdepth 1 -name '??_*.sql' -printf "\\\\i %f\n" | sort > make.tmp.sql
\i make.tmp.sql

ROLLBACK;
