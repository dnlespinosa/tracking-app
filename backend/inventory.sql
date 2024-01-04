\echo 'Delete and recreate accounts databse?'
\prompt 'Return for yes or control-C to cancel' foo

DROP DATABASE inventory
CREATE DATABASE inventory
\connect inventory

\i inventory-schema.sql
\i inventory-seed.sql

