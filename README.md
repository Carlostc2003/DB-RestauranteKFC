# Proyecto Base de Datos de Cadena de Restauración

## Contenido
- [Descripción](#descripción)  
- [Requisitos](#requisitos)  
- [Instalación](#instalación)  
- [Uso](#uso)  
- [Borrado de datos](#borrado-de-datos)  

---

## Descripción

Este proyecto implementa en MariaDB la estructura de una base de datos para gestionar información de una Cadena de Restauración (países, proveedores, locales, clientes, pedidos, etc.)

---

## Requisitos

- Un sistema gestor de bases de datos compatible con SQL — como MariaDB.  
- Consola o cliente SQL (p. ej. línea de comandos, interfaz gráfica, etc.).  

---

## Instalación

1. Descargar el archivo `script_database.sql`
2. Importar el archivo `script_database.sql` a tu Base de datos dentro de MariaDB


## Uso

Tras la instalación y cargar los datos que se encuentran en el archivo `script_data_tables.sql`, puedes consultar la base de datos. Por ejemplo:
```sql
    SELECT * FROM LOCAAL;
```
Muestra toda la información de la tabla `LOCAAL`.

>Al final del archivo `script_data_tables.sql` están todos los SELECT * FROM tabla;

## Borrado de datos

Para borrar todos los datos de una tabla, simplemente tienes que ir al archivo `script_empty_tables.sql` y desactivar las claves foráneas temporalmente. Después seleccionar la tabla que quieras borrar y volver a activar las claves foráneas.






