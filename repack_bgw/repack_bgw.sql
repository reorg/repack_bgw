/*
 * repack_bgw extension SQL definition
 *
 * Copyright (c) 2017, The Reorg Development Team
 */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION repack_bgw" to load this file. \quit

CREATE FUNCTION repack_bgw_launch(
    dbname pg_catalog.name, index pg_catalog.int4)
RETURNS pg_catalog.int4 STRICT
AS 'MODULE_PATHNAME'
LANGUAGE C;
