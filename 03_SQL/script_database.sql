DROP DATABASE IF EXISTS kfc;

CREATE DATABASE kfc CHARACTER SET utf8mb4;
USE kfc;

CREATE TABLE PAIS(
    codigo_iso CHAR(2),
    nombre VARCHAR(64),
    moneda char(1), 
    poblacion INT,

    CONSTRAINT PK_codigo_iso PRIMARY KEY(codigo_iso)
);

CREATE TABLE PROVEEDOR(
    nif CHAR(9),
    nombre VARCHAR(64),

    CONSTRAINT PK_nif PRIMARY KEY(nif)
);

CREATE TABLE TELEFONO(
    numero VARCHAR(32),
    nifProveedor CHAR(9),

    CONSTRAINT PK_numero PRIMARY KEY(numero),
    CONSTRAINT FK_nifproveedor FOREIGN KEY(nifProveedor) REFERENCES PROVEEDOR(nif)
);

CREATE TABLE PROVEER(
    nifProveedor CHAR(9),
    isoPais CHAR(2),

    CONSTRAINT PK_proveer PRIMARY KEY (nifProveedor,isoPais),
    CONSTRAINT FK_nifproveedor FOREIGN KEY(nifProveedor) REFERENCES PROVEEDOR(nif),
    CONSTRAINT FK_iso_pais FOREIGN KEY(isoPais) REFERENCES PAIS(codigo_iso)
);

CREATE TABLE RECETA(
    id_receta INT,
    nombre VARCHAR(64),
    ingredientes VARCHAR(1024), /*Por si quieren poner recetas largas.*/

    CONSTRAINT PK_id_receta PRIMARY KEY (id_receta)
);

CREATE TABLE USAR(
    id_receta INT,
    isoPais CHAR(2),

    CONSTRAINT PK_usar PRIMARY KEY(id_receta,isoPais),
    CONSTRAINT FK_id_receta FOREIGN KEY(id_receta) REFERENCES RECETA(id_receta),
    CONSTRAINT FK_iso_pais FOREIGN KEY(isoPais) REFERENCES PAIS(codigo_iso)
);

CREATE TABLE CLIENTE_FIDELIZADO(
    dni char(9),
    fecha_nacimiento DATE,
    nombre VARCHAR(128),

    CONSTRAINT PK_dni PRIMARY KEY(dni)
);

CREATE TABLE POSEER( 
    dniCliente CHAR(9),
    isoPais CHAR(2),

    CONSTRAINT PK_posser PRIMARY KEY(dniCliente,isoPais),
    CONSTRAINT FK_dniCliente FOREIGN KEY (dniCliente) REFERENCES CLIENTE_FIDELIZADO(dni)
);

CREATE TABLE LOCAAL( 
    id_local INT AUTO_INCREMENT, /*Para que no haga falta asignarle un id a cada restaurante, simplemente que vaya autoincrementando una vez puesto el primero*/
    nombre VARCHAR(128),
    ciudad VARCHAR(64),
    calle VARCHAR(64),
    numero VARCHAR(8), /*No se va a hacer operaciones con este número*/
    codigo_postal CHAR(5),

    CONSTRAINT PK_id_local PRIMARY KEY(id_local)
);


CREATE TABLE ESTAR(
    idLocal INT,
    isoPais CHAR(2),

    CONSTRAINT PK_estar PRIMARY KEY(idLocal,isoPais),
    CONSTRAINT FK_idlocal FOREIGN KEY(idLocal) REFERENCES LOCAAL(id_local),
    CONSTRAINT FK_iso_pais FOREIGN KEY(isoPais) REFERENCES PAIS(codigo_iso)
);

CREATE TABLE PEDIDO(
    numero_pedido INT AUTO_INCREMENT,
    idLocal INT,
    fecha DATETIME, /*Para ver el momento exacto del pedido, por si hay algún helado para que no puedan volver a pedirlo 10 horas después*/
    nombre_cliente VARCHAR(128),
    dniCliente CHAR(9),

    CONSTRAINT PK_pedido PRIMARY KEY(numero_pedido,idLocal),
    CONSTRAINT FK_idlocal FOREIGN KEY(idLocal) REFERENCES LOCAAL(id_local),
    CONSTRAINT FK_dniCliente FOREIGN KEY (dniCliente) REFERENCES CLIENTE_FIDELIZADO (dni)
);

CREATE TABLE TRABAJADOR(
    dni CHAR(9),
    nombre VARCHAR(128),
    idLocal INT,

    CONSTRAINT PK_dni PRIMARY KEY(dni),
    CONSTRAINT FK_idlocal FOREIGN KEY(idLocal) REFERENCES LOCAAL(id_local)
);

CREATE TABLE LIMPIEZA(
    dniTrabajador CHAR(9),

    CONSTRAINT PK_dni_trabajador PRIMARY KEY(dniTrabajador),
    CONSTRAINT FK_dni_trabajador FOREIGN KEY(dniTrabajador) REFERENCES TRABAJADOR(dni)
);


CREATE TABLE LIMPIAR(
    dniTrabajador CHAR(9),
    idLocal INT,

    CONSTRAINT PK_limpiar PRIMARY KEY(dniTrabajador,idLocal),
    CONSTRAINT FK_dni_trabajador FOREIGN KEY(dniTrabajador) REFERENCES TRABAJADOR(dni),
    CONSTRAINT FK_idlocal FOREIGN KEY (idLocal) REFERENCES LOCAAL(id_local)
);

CREATE TABLE ENCARGADO(
    dniTrabajador CHAR(9),

    CONSTRAINT PK_dni_trabajador PRIMARY KEY(dniTrabajador),
    CONSTRAINT FK_dni_trabajador FOREIGN KEY(dniTrabajador) REFERENCES TRABAJADOR(dni)
);

CREATE TABLE TRABAJO(
    idLocal INT NOT NULL,
    dniTrabajador CHAR(9) NOT NULL,
    fecha DATE,

    CONSTRAINT PK_trabajo PRIMARY KEY(idLocal, dniTrabajador),
    CONSTRAINT FK_idlocal FOREIGN KEY (idLocal) REFERENCES LOCAAL(id_local),
    CONSTRAINT FK_dni_trabajador FOREIGN KEY (dniTrabajador) REFERENCES ENCARGADO(dniTrabajador)
);

CREATE TABLE INCIDENCIA(
    id_incidencia INT AUTO_INCREMENT,
    descripcion VARCHAR(1024),

    CONSTRAINT PK_id_incidencia PRIMARY KEY(id_incidencia)
);


CREATE TABLE REGISTRAR(
    idLocal INT,
    dniTrabajador CHAR(9),
    idIncidencia INT,

    CONSTRAINT PK_registrar PRIMARY KEY(idLocal, dniTrabajador, idIncidencia),
    CONSTRAINT FK_id_incidencia FOREIGN KEY(idIncidencia) REFERENCES INCIDENCIA(id_incidencia),
    CONSTRAINT FK_idlocal FOREIGN KEY (idLocal) REFERENCES TRABAJO(idLocal),
    CONSTRAINT FK_dni_trabajador FOREIGN KEY (dniTrabajador) REFERENCES TRABAJO(dniTrabajador)
);

CREATE TABLE INGREDIENTES(
    id INT,
    idReceta INT,

    CONSTRAINT PK_id PRIMARY KEY(id),
    CONSTRAINT FK_id_receta FOREIGN KEY(idReceta) REFERENCES RECETA(id_receta)
);

