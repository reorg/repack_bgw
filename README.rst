Repack Background Worker for PostgreSQL
=======================================

repack_bgw_ is a PostgreSQL extension designed to automatically control and
reduce the amount of bloat in PostgreSQL tables. It owes its implementation to
pg_repack_ but instead of being a command-line tool it is implemented as a
`background worker`_ and designed for unattended continuous operation in a
server.

.. _repack_bgw: https://github.com/reorg/repack_bgw
.. _pg_repack: http://reorg.github.io/pg_repack/
.. _background worker: https://www.postgresql.org/docs/current/static/bgworker.html

Copyright (c) 2017, The Reorg Development Team
