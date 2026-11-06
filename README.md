# test-manager-library-3239188-infra

> **Prueba técnica · Ficha ADSO 3239188**  
> Infraestructura de contenedores para *Manager Library*.

Este repositorio provee el entorno orquestado con **Docker Compose** para levantar el motor de base de datos **PostgreSQL 16**.

---

## 1. Cumplimiento de Constitución y Decisiones de Arquitectura

* **Artículo V & ADR-001 (Propiedad del esquema):** El motor arranca **completamente vacío**. No contiene sentencias `CREATE TABLE`. Todo el DDL (tablas, índices, claves foráneas, restricciones y semillas) pertenece exclusivamente a las migraciones de la aplicación (`api`).
* **RNF-5 & Tarea T-20:** El sistema de infraestructura levanta con un solo comando.

---

## 2. Requisitos Previos

* [Docker](https://docs.docker.com/get-docker/) y Docker Compose instalados.

---

## 3. Puesta en Marcha

1. Copiar el archivo de variables de entorno si se desea personalizar credenciales:
   ```bash
   cp .env.example .env
   ```

2. Levantar el servicio del motor en segundo plano:
   ```bash
   docker compose up -d
   ```

3. Verificar el estado del contenedor:
   ```bash
   docker compose ps
   ```

4. Ver logs del motor:
   ```bash
   docker compose logs -f db
   ```

5. Detener el servicio:
   ```bash
   docker compose down
   ```

---

## 4. Parámetros de Conexión

| Parámetro | Valor por Defecto |
|---|---|
| **Host** | `localhost` |
| **Puerto** | `5432` |
| **Base de Datos** | `library` |
| **Esquema** | `library` |
| **Usuario** | `library` |
| **Contraseña** | `library_secret` |
