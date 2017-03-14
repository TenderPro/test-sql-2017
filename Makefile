SHELL    = /bin/bash

PG_HOST ?= localhost
DB_NAME ?= op
DB_USER ?= op
DB_PASS ?= op

all:
	PGPASSWORD=$(DB_PASS) psql -h $(PG_HOST) -U $(DB_USER) $(DB_NAME) -f make.sql

clean: 
	rm -f *.res rm make.tmp.sql
