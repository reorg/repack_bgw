# repack_bgw extension makefile
#
# Copyright (c) 2017, The Reorg Development Team

PG_CONFIG ?= pg_config

EXTENSION = repack_bgw

# Extract the version number of the library
EXTVERSION = $(shell grep '"version":' ../META.json | head -1 \
	| sed -e 's/.*"version":[^"]*"\(.*\)".*/\1/')

MODULE_big = $(EXTENSION)
DATA_built = $(EXTENSION)--$(EXTVERSION).sql $(EXTENSION).control

OBJS = repack_bgw.o

PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

$(EXTENSION)--$(EXTVERSION).sql: $(EXTENSION).sql
	cat $< > $@

$(EXTENSION).control: $(EXTENSION).control.in
	sed 's,EXTVERSION,$(EXTVERSION),g' $< > $@
