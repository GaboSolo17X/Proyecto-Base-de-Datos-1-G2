--1)Creando la tabla SUCURSAL
CREATE TABLE SUCURSAL
(
Id_Sucursal     VARCHAR(5) NOT NULL,
Nombre          VARCHAR(20) NOT NULL CONSTRAINT Nombre UNIQUE,
Bloque          VARCHAR(20),
Colonia         VARCHAR(20),
Calle           VARCHAR(20),

CONSTRAINT PK_SUCURSAL PRIMARY KEY (Id_Sucursal)
)

--1)Insert en la TABLA SUCURSAL
INSERT INTO SUCURSAL VALUES ('SUC01', 'Sport Life Ventu', 'Bloque A', 'Las Casitas', 'Calle 5010');
INSERT INTO SUCURSAL VALUES ('SUC02', 'Sport Life Marriot','-','-', 'Bvd.Juan PabloII');

SELECT*FROM SUCURSAL;

--2)Creando la tabla EMPLEADO
CREATE TABLE EMPLEADO
(
DNI             VARCHAR(8),
Nombre1         VARCHAR(20) NOT NULL,
Nombre2         VARCHAR(20) NOT NULL,
Apellido1       VARCHAR(20) NOT NULL,
Apellido2       VARCHAR(20) NOT NULL,
Genero          CHAR(1) NOT NULL,
FechaNac        DATE NOT NULL,
Telefono        VARCHAR(8) NOT NULL CONSTRAINT Telefono UNIQUE,
Direccion       VARCHAR(50) NOT NULL,
FechaInicio     DATE NOT NULL,
Tipo_Empleado   VARCHAR(10) NOT NULL,
Tipo_Laboral    VARCHAR(10) NOT NULL,
IdSucursal      VARCHAR(5) NOT NULL,

CONSTRAINT PK_EMPLEADO PRIMARY KEY (DNI),
CONSTRAINT CHK_GeneroEmpleado CHECK (Genero in ('M','F')),
CONSTRAINT CHK_EdadEmpleado CHECK (FechaNac<'01-JAN-2003'),
CONSTRAINT FK_EmpSucu FOREIGN KEY (IdSucursal) REFERENCES SUCURSAL(Id_Sucursal)
)


--3)Creando la tabla EMPLEADO PERMANENTE
CREATE TABLE EMPLEADO_PERMANENTE
(
DNI             VARCHAR(8),
SalarioBase     FLOAT NOT NULL,

CONSTRAINT PK_EMPPER PRIMARY KEY (DNI),
CONSTRAINT CHK_Salario CHECK (SalarioBase>10000),
CONSTRAINT FK_EmpPermanente FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

--4)Creando la tabla EMPLEADO POR CONTRATO
CREATE TABLE EMPLEADO_POR_CONTRATO
(
DNI             VARCHAR(8),
VenciContrato   DATE NOT NULL,

CONSTRAINT PK_EMPCON PRIMARY KEY (DNI),
CONSTRAINT FK_EmpContrato FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)


--5)Creando la tabla GERENTE
CREATE TABLE GERENTE
(
DNI             VARCHAR(8),
Grado           VARCHAR(20) NOT NULL,

CONSTRAINT PK_GERENTE PRIMARY KEY (DNI),
CONSTRAINT FK_EmpGerente FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)


--6)Creando la tabla MANTENIMIENTO
CREATE TABLE MANTENIMIENTO
(
DNI             VARCHAR(8),
Locker          VARCHAR(5) NOT NULL CONSTRAINT Locker UNIQUE,

CONSTRAINT PK_MANTE PRIMARY KEY (DNI),
CONSTRAINT FK_EmpMante FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)


--7)Creando la tabla RECEPCIONISTA
CREATE TABLE RECEPCIONISTA
(
DNI             VARCHAR(8),
Caja            VARCHAR(10) NOT NULL CONSTRAINT Caja UNIQUE,

CONSTRAINT PK_RECEP PRIMARY KEY (DNI),
CONSTRAINT FK_EmpRecep FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)


--8)Creando la tabla INSTRUCTOR
CREATE TABLE INSTRUCTOR
(
DNI                   VARCHAR(8),
Especializacion_Ins   VARCHAR(10) NOT NULL,

CONSTRAINT PK_INSTRUCTOR PRIMARY KEY (DNI),
CONSTRAINT FK_EmpInstructor FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)


--9)Creando la tabla PERSONAL ASEO
CREATE TABLE PERSONAL_ASEO
(
DNI             VARCHAR(8),
Locker2          VARCHAR(5) NOT NULL CONSTRAINT Locker2 UNIQUE,

CONSTRAINT PK_ASEO PRIMARY KEY (DNI),
CONSTRAINT FK_EmpAseo FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)


--10)Creando la tabla MASAJISTA
CREATE TABLE MASAJISTA
(
DNI                     VARCHAR(8),
Especializacion_Masaje  VARCHAR(10) NOT NULL,

CONSTRAINT PK_MASAJISTA PRIMARY KEY (DNI),
CONSTRAINT FK_EmpMasajista FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)


--11)Creando la tabla HERRAMIENTAS MANTENIMIENTO
CREATE TABLE HERRAMIENTAS_MANTENIMIENTO
(
DNI           VARCHAR(8),
Herramientas  VARCHAR(10),

CONSTRAINT PK_HERRMAN PRIMARY KEY (DNI,Herramientas),
CONSTRAINT FK_MantHerramientas FOREIGN KEY (DNI) REFERENCES MANTENIMIENTO(DNI)
)

--12)Creando la tabla PRODUCTOS ASEO
CREATE TABLE PRODUCTOS_ASEO
(
DNI           VARCHAR(8),
Prod_Aseo     VARCHAR(10),

CONSTRAINT PK_PRODASEO PRIMARY KEY (DNI,Prod_Aseo),
CONSTRAINT FK_AseoProd FOREIGN KEY (DNI) REFERENCES PERSONAL_ASEO(DNI)
)


--13)Creando la tabla PRODUCTO
CREATE TABLE PRODUCTO
(
CodigoPro        VARCHAR(10),
Nombre_Producto  VARCHAR(50) NOT NULL,
Material         VARCHAR(10) NOT NULL,
Marco            VARCHAR(10) NOT NULL,
Precio           FLOAT NOT NULL,

CONSTRAINT PK_PRODUCTO PRIMARY KEY (CodigoPro),
CONSTRAINT CHK_Precio CHECK (Precio>0)
)

-----------------------------------------INSERT PRODUCTO----------------------------------------------------
INSERT INTO PRODUCTO VALUES ('P1', 'Calmante muscular', 'crema', 'Sabon', '150');
INSERT INTO PRODUCTO VALUES ('P2', 'Aceite de ducha', 'aceite', 'Sabon', '200');
INSERT INTO PRODUCTO VALUES ('P3', 'Jabon de cuerpo', 'jabon', 'Sabon', '300');
INSERT INTO PRODUCTO VALUES ('P4', 'Exfoliante corporal', 'crema', 'Sabon', '300');
INSERT INTO PRODUCTO VALUES ('P5', 'Gel de ducha sport', 'jabon', 'Etnia', '250');
INSERT INTO PRODUCTO VALUES ('P6', 'Fragancia corporal', 'perfume', 'Etnia', '350');
INSERT INTO PRODUCTO VALUES ('P7', 'Crema hidratante', 'crema', 'Neutrogena', '400');
INSERT INTO PRODUCTO VALUES ('P8', 'Crema para afeitar', 'crema', 'Neutrogena', '200');
INSERT INTO PRODUCTO VALUES ('P9', 'Exfoliante corporal', 'crema', 'Neutrogena', '350');
INSERT INTO PRODUCTO VALUES ('P10', 'Crema de ducha', 'crema', 'Body Natur', '280');
INSERT INTO PRODUCTO VALUES ('P11', 'Locion facial', 'perfume', 'ASH', '300');
INSERT INTO PRODUCTO VALUES ('P12', 'Exfoliante facial', 'crema', 'ASH', '350');
INSERT INTO PRODUCTO VALUES ('P13', 'Exfoliante corporal', 'crema', 'ASH', '450');
INSERT INTO PRODUCTO VALUES ('P14', 'Proteina', 'huevo', 'Ovofull', '500');
INSERT INTO PRODUCTO VALUES ('P15', 'Proteina instantanea', 'carne', 'Ovofull', '600');
INSERT INTO PRODUCTO VALUES ('P16', 'Proteina instantanea Plus', 'Carne', 'Ovofull', '800');
INSERT INTO PRODUCTO VALUES ('P17', 'Proteina', 'huevo', 'Weider', '550');
INSERT INTO PRODUCTO VALUES ('P18', 'Proteina premium', 'carne', 'Weider', '850');
INSERT INTO PRODUCTO VALUES ('P19', 'Proteina Micelle', 'carne', 'Casein', '550');
INSERT INTO PRODUCTO VALUES ('P20', 'Proteina en batido', 'frutas', 'Vikika', '700');
-----------------------------------------FIN INSERT PRODUCTO----------------------------------------------------

--14)Creando la tabla PROVEEDOR
CREATE TABLE PROVEEDOR
(
Id_Proveedor      VARCHAR(10),
Nombre_Proveedor  VARCHAR(50) NOT NULL,
TelefonoPro       VARCHAR(8) NOT NULL CONSTRAINT TelefonoPro UNIQUE,
Colonia           VARCHAR(50) NOT NULL,
Calle             VARCHAR(50) NOT NULL,
Bloque            VARCHAR(50) NOT NULL,

CONSTRAINT PK_PROVEEDOR PRIMARY KEY (Id_Proveedor)
)

-----------------------------------------INSERT PROVEEDOR----------------------------------------------------
INSERT INTO PROVEEDOR VALUES ('01', 'Sabon', '22803808', 'Los Laureles', '23', '1');
INSERT INTO PROVEEDOR VALUES ('02', 'Etnia', '24556565', 'Los Pinos', '21', '2');
INSERT INTO PROVEEDOR VALUES ('03', 'Neutrogena', '22556789', 'Toncontin', '12', '3');
INSERT INTO PROVEEDOR VALUES ('04', 'Body Natur', '22123456', 'Miraflores', '25', '4');
INSERT INTO PROVEEDOR VALUES ('05', 'ASH', '22987654', 'Loma Linda', '4', '2');
INSERT INTO PROVEEDOR VALUES ('06', 'Ovofull', '22304455', 'Bella Vista', '2', '4');
INSERT INTO PROVEEDOR VALUES ('07', 'Weider', '22404031', 'Bonita Flor', '9', '6');
INSERT INTO PROVEEDOR VALUES ('08', 'Casein', '22694203', 'Belleza Divina', '15', '3');
INSERT INTO PROVEEDOR VALUES ('09', 'Vikika', '22110007', 'San Juan', '13', '1');
-----------------------------------------FIN INSERT PROVEEDOR----------------------------------------------------

--15)Creando la tabla CLIENTE
CREATE TABLE CLIENTE
(
DniCliente        VARCHAR(8),
Nombre1           VARCHAR(20) NOT NULL,
Apellido1         VARCHAR(20) NOT NULL ,
Genero            CHAR(1) NOT NULL,
TelefonoCli       VARCHAR(8) NOT NULL CONSTRAINT TelefonoCli UNIQUE,
Razon             VARCHAR(5),
Direccion         VARCHAR(20) NOT NULL,
FechaNacimiento   DATE NOT NULL,
DniEmpleado       VARCHAR(8) NOT NULL,
IdSucursal        VARCHAR(5) NOT NULL,

CONSTRAINT PK_CLIENTE PRIMARY KEY (DniCliente),
CONSTRAINT CHK_GeneroCliente CHECK (Genero in ('M','F')),
CONSTRAINT CHK_RazonCliente CHECK (Razon in ('MED','PER','OTRO')),
CONSTRAINT FK_ClienteEmp FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO(DNI),
CONSTRAINT FK_ClienteSucu FOREIGN KEY (IdSucursal) REFERENCES SUCURSAL(Id_Sucursal)
)

--16)Creando la tabla FACTURA
CREATE TABLE FACTURA
(
Num_Factura       VARCHAR(10),
Fecha             DATE NOT NULL,
Forma_de_Pago     VARCHAR(8) NOT NULL ,
Descuento         FLOAT NOT NULL,
RTN               VARCHAR(20) NOT NULL CONSTRAINT RTN UNIQUE,
Total             FLOAT,
DniCliente        VARCHAR(8) NOT NULL,
DniEmpleado       VARCHAR(8) NOT NULL,

CONSTRAINT PK_FACTURA PRIMARY KEY (Num_Factura),
CONSTRAINT CHK_FormaPago CHECK (Forma_de_Pago in ('Tarjeta','Efectivo')),
CONSTRAINT FK_FacEmp FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO(DNI),
CONSTRAINT FK_FacCliente FOREIGN KEY (DniCliente) REFERENCES CLIENTE(DniCliente)
)



--17)Creando la tabla DETALLE FACTURA
CREATE TABLE DETALLE_FACTURA
(
Num_Factura       VARCHAR(10),
IdDetalle         VARCHAR(10) NOT NULL,
Cantidad          INT NOT NULL ,
Subtotal          FLOAT NOT NULL,
CodigoPro         VARCHAR(10) NOT NULL,

CONSTRAINT PK_DET PRIMARY KEY (Num_Factura,IdDetalle),
CONSTRAINT FK_DetFac FOREIGN KEY (Num_Factura) REFERENCES FACTURA(Num_Factura),
CONSTRAINT FK_DetPro FOREIGN KEY (CodigoPro) REFERENCES PRODUCTO(CodigoPro)
)



--18)Creando la tabla SERVICIO
CREATE TABLE SERVICIO
(
Id_Servicio       VARCHAR(10),
NombreSer         VARCHAR(50) NOT NULL CONSTRAINT NombreSer UNIQUE,

CONSTRAINT PK_SERVICIO PRIMARY KEY (Id_Servicio)
)

-----------------------------------------INSERT SERVICIO----------------------------------------------------
INSERT INTO SERVICIO VALUES ('1', 'Cardio');
INSERT INTO SERVICIO VALUES ('2', 'Pesas');
INSERT INTO SERVICIO VALUES ('3', 'Spinning');
INSERT INTO SERVICIO VALUES ('4', 'Zumba');
INSERT INTO SERVICIO VALUES ('5', 'Aerobicos');
INSERT INTO SERVICIO VALUES ('6', 'Yoga');
INSERT INTO SERVICIO VALUES ('7', 'Spa');
INSERT INTO SERVICIO VALUES ('8', 'Masajes');
-----------------------------------------FIN INSERT SERVICIO----------------------------------------------------

--19)Creando la tabla SERVICIO EJERCICIO
CREATE TABLE SERV_EJERCICIO
(
Id_Servicio        VARCHAR(10),
PlanEjercicio      VARCHAR(20),

CONSTRAINT PK_SERVEJE PRIMARY KEY (Id_Servicio),
CONSTRAINT FK_EjeServicio FOREIGN KEY (Id_Servicio) REFERENCES SERVICIO(Id_Servicio)
)

-----------------------------------------INSERT SERV_EJERCICIO----------------------------------------------------
INSERT INTO SERV_EJERCICIO VALUES ('1', 'Cardio');
INSERT INTO SERV_EJERCICIO VALUES ('2', 'Pesas');
INSERT INTO SERV_EJERCICIO VALUES ('3', 'Spinning');
INSERT INTO SERV_EJERCICIO VALUES ('4', 'Zumba');
INSERT INTO SERV_EJERCICIO VALUES ('5', 'Aerobicos');
INSERT INTO SERV_EJERCICIO VALUES ('6', 'Yoga');
-----------------------------------------FIN INSERT SERV_EJERCICIO----------------------------------------------------

--20)Creando la tabla SERVICIO VIP
CREATE TABLE SERV_VIP
(
Id_Servicio        VARCHAR(10),
Horario            VARCHAR(15),

CONSTRAINT PK_VIPEJE PRIMARY KEY (Id_Servicio),
CONSTRAINT FK_VIPServicio FOREIGN KEY (Id_Servicio) REFERENCES SERVICIO(Id_Servicio)
)

-----------------------------------------INSERT SERV_VIP----------------------------------------------------
INSERT INTO SERV_VIP VALUES ('7', 'Matutino');
INSERT INTO SERV_VIP VALUES ('8', 'Vespertino');
-----------------------------------------FIN INSERT SERV_VIP----------------------------------------------------

--21)Creando la tabla AREA
CREATE TABLE AREA
(
CodEspacio        VARCHAR(5),
NombreAr          VARCHAR(50) NOT NULL CONSTRAINT NombreAr UNIQUE,
IdServicio        VARCHAR(10) NOT NULL,

CONSTRAINT PK_AREA PRIMARY KEY (CodEspacio),
CONSTRAINT FK_AREAServi FOREIGN KEY (IdServicio) REFERENCES SERVICIO(Id_Servicio)
)

-----------------------------------------INSERT AREA----------------------------------------------------
INSERT INTO AREA VALUES ('A1', 'Zona de cardio', '1');
INSERT INTO AREA VALUES ('A2', 'Zona de Pesas', '2');
INSERT INTO AREA VALUES ('A3', 'Zona de spinning', '3');
INSERT INTO AREA VALUES ('A4', 'Zona de bailes', '4');
INSERT INTO AREA VALUES ('A5', 'Zona de aerobicos', '5');
INSERT INTO AREA VALUES ('A6', 'Zona de yoga', '6');
INSERT INTO AREA VALUES ('A7', 'Zona de spa', '7');
INSERT INTO AREA VALUES ('A8', 'Zona de masajes', '8');
-----------------------------------------FIN INSERT AREA----------------------------------------------------

--22)Creando la tabla CLASE
CREATE TABLE CLASE
(
IdClase        VARCHAR(10),
Hora           VARCHAR(30) NOT NULL, 
IdServicio     VARCHAR(10) NOT NULL,
DniEmpleado    VARCHAR(8) NOT NULL,

CONSTRAINT PK_CLASE PRIMARY KEY (IdClase),
CONSTRAINT FK_ClaseServi FOREIGN KEY (IdServicio) REFERENCES SERVICIO(Id_Servicio),
CONSTRAINT FK_ClaseEmp FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO(DNI)
)



--23)Creando la tabla MAQUINARIA
CREATE TABLE MAQUINARIA
(
IDmaquina     VARCHAR(6),
Cantidad      INT,
Uso           VARCHAR(50),
Estado        VARCHAR(8),
Nombre        VARCHAR(10) NOT NULL, 
IdClase       VARCHAR(10) NOT NULL,
IdSucursal    VARCHAR(5) NOT NULL,

CONSTRAINT PK_MAQUINA PRIMARY KEY (IDmaquina),
CONSTRAINT CHK_Uso CHECK (Uso in ('Cardio','Pesas','Spinning')),
CONSTRAINT CHK_Estado CHECK (Estado in ('Bien','Regular','Fatal')),
CONSTRAINT FK_MaquiClase FOREIGN KEY (IdClase) REFERENCES CLASE(IdClase),
CONSTRAINT FK_MaquiSucu FOREIGN KEY (IdSucursal) REFERENCES SUCURSAL(Id_Sucursal)
)



--24)Creando la tabla EMPLEADO REPARA MAQUINA
CREATE TABLE EMP_REPARA_MAQUINARIA
(
DniEmpleado    VARCHAR(8) NOT NULL,
IdMaquinaria   VARCHAR(6),
Fecha          DATE,


CONSTRAINT PK_REPARA PRIMARY KEY (DniEmpleado,IdMaquinaria,Fecha),
CONSTRAINT FK_RepEmp FOREIGN KEY (DniEmpleado) REFERENCES MANTENIMIENTO(DNI),
CONSTRAINT FK_RepMaq FOREIGN KEY (IdMaquinaria) REFERENCES MAQUINARIA(IDmaquina)
)



--25)Creando la tabla CLIENTE RECIBE CLASES
CREATE TABLE CLIENTE_RECIBE_CLASES
(
IdClase       VARCHAR(10) NOT NULL,
DniCliente    VARCHAR(8) NOT NULL,

CONSTRAINT PK_RECIBECLI PRIMARY KEY (IdClase,DniCliente),
CONSTRAINT FK_RecibeClase FOREIGN KEY (IdClase) REFERENCES CLASE(IdClase),
CONSTRAINT FK_RecibeCliente FOREIGN KEY (DniCliente) REFERENCES CLIENTE(DniCliente)
)


--26)Creando la tabla MASAJISTA PROPORCIONA SERVICIOS
CREATE TABLE MASAJISTA_PROPORCIONA_SERVICIOS
(
IdServicio       VARCHAR(10) NOT NULL,
DniEmpleado      VARCHAR(8) NOT NULL,

CONSTRAINT PK_PROPO PRIMARY KEY (IdServicio,DniEmpleado),
CONSTRAINT FK_PropoServi FOREIGN KEY (IdServicio) REFERENCES SERVICIO(Id_Servicio),
CONSTRAINT FK_PropoEmp FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO(DNI)
)



--27)Creando la tabla MEMBRESIA
CREATE TABLE MEMBRESIA
(
IdMembresia         VARCHAR(10) NOT NULL,
Precio              FLOAT NOT NULL,
Fecha_Inscripcion   DATE NOT NULL,

CONSTRAINT PK_MEMBRESIA PRIMARY KEY (IdMembresia),
CONSTRAINT CHK_PrecioMem CHECK (Precio>300 AND Precio<700)
)



--28)Creando la tabla MEMBRESIA REGULAR
CREATE TABLE MEMBRESIA_REGULAR
(
IdMembresia       VARCHAR(10) NOT NULL,
Promocion         VARCHAR(50),

CONSTRAINT PK_MEMREG PRIMARY KEY (IdMembresia),
CONSTRAINT FK_RegMem FOREIGN KEY (IdMembresia) REFERENCES MEMBRESIA(IdMembresia)
)



--29)Creando la tabla MEMBRESIA VIP
CREATE TABLE MEMBRESIA_VIP
(
IdMembresia       VARCHAR(10) NOT NULL,
Privilegio        VARCHAR(50),

CONSTRAINT PK_MEMBRESIAVIP PRIMARY KEY (IdMembresia),
CONSTRAINT FK_VIPMem FOREIGN KEY (IdMembresia) REFERENCES MEMBRESIA(IdMembresia)
)



--30)Creando la tabla MEMBRESIA VIP ACCEDE A SERVICIOS
CREATE TABLE MEMBRESIAVIP_ACCEDE_A_SERVICIOS
(
IdMembresia       VARCHAR(10) NOT NULL,
IdServicio        VARCHAR(10),

CONSTRAINT PK_ACCEDESERV PRIMARY KEY (IdMembresia,IdServicio),
CONSTRAINT FK_VIPMembre FOREIGN KEY (IdMembresia) REFERENCES MEMBRESIA(IdMembresia),
CONSTRAINT FK_VIPServi FOREIGN KEY (IdServicio) REFERENCES SERV_VIP(Id_Servicio)
)



--31)Creando la tabla MENSUALIDAD
CREATE TABLE MENSUALIDAD
(
IdMensualidad     VARCHAR(10),
IdMembresia       VARCHAR(10) NOT NULL,
DniEmpleado       VARCHAR(8)NOT NULL,
Dni_Cliente       VARCHAR(8) NOT NULL,
FechaPago         DATE NOT NULL,

CONSTRAINT PK_MENSUALIDAD PRIMARY KEY (IdMembresia,IdMensualidad,DniEmpleado,Dni_Cliente),
CONSTRAINT FK_MenMem FOREIGN KEY (IdMembresia) REFERENCES MEMBRESIA(IdMembresia),
CONSTRAINT FK_MenEmp FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO(DNI),
CONSTRAINT FK_MenCli FOREIGN KEY (Dni_Cliente) REFERENCES CLIENTE(DniCliente)
)



--32)Creando la tabla OFRECE SERVICIO
CREATE TABLE OFRECE_SERVICIO
(
IdServicio     VARCHAR(10),
IdSucursal     VARCHAR(5),

CONSTRAINT PK_OFRECE PRIMARY KEY (IdServicio,IdSucursal),
CONSTRAINT FK_OfrServ FOREIGN KEY (IdServicio) REFERENCES SERVICIO(Id_Servicio),
CONSTRAINT FK_OfrSucu FOREIGN KEY (IdSucursal) REFERENCES SUCURSAL(Id_Sucursal)
)




--33)Creando la tabla SUMINISTRA
CREATE TABLE SUMINISTRA
(
Id_Proveedor  VARCHAR(10),
CodigoPro     VARCHAR(10),

CONSTRAINT PK_SUMINISTRA PRIMARY KEY (Id_Proveedor,CodigoPro),
CONSTRAINT FK_SumiProv FOREIGN KEY (Id_Proveedor) REFERENCES PROVEEDOR(Id_Proveedor ),
CONSTRAINT FK_SumiProd FOREIGN KEY (CodigoPro) REFERENCES PRODUCTO(CodigoPro)
)

-----------------------------------------INSERT SUMINISTRA----------------------------------------------------
INSERT INTO SUMINISTRA VALUES ('01', 'P1');
INSERT INTO SUMINISTRA VALUES ('01', 'P2');
INSERT INTO SUMINISTRA VALUES ('01', 'P3');
INSERT INTO SUMINISTRA VALUES ('01', 'P4');
INSERT INTO SUMINISTRA VALUES ('02', 'P5');
INSERT INTO SUMINISTRA VALUES ('02', 'P6');
INSERT INTO SUMINISTRA VALUES ('03', 'P7');
INSERT INTO SUMINISTRA VALUES ('03', 'P8');
INSERT INTO SUMINISTRA VALUES ('03', 'P9');
INSERT INTO SUMINISTRA VALUES ('04', 'P10');
INSERT INTO SUMINISTRA VALUES ('05', 'P11');
INSERT INTO SUMINISTRA VALUES ('05', 'P12');
INSERT INTO SUMINISTRA VALUES ('05', 'P13');
INSERT INTO SUMINISTRA VALUES ('06', 'P14');
INSERT INTO SUMINISTRA VALUES ('06', 'P15');
INSERT INTO SUMINISTRA VALUES ('06', 'P16');
INSERT INTO SUMINISTRA VALUES ('07', 'P17');
INSERT INTO SUMINISTRA VALUES ('07', 'P18');
INSERT INTO SUMINISTRA VALUES ('08', 'P19');
INSERT INTO SUMINISTRA VALUES ('09', 'P20');
-----------------------------------------FIN INSERT SUMMINISTRA----------------------------------------------------
