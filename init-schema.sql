-- init-schema.sql
-- Cumplimiento estricto de ADR-001 y Constitución Artículo V:
-- El motor arranca VACÍO. NO contiene CREATE TABLE.
-- Solo se asegura la existencia del esquema de referencia 'library'.

CREATE SCHEMA IF NOT EXISTS library;
GRANT ALL ON SCHEMA library TO library;
