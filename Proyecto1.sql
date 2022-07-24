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

------------------------------ Insert de los empleados --------------------------------------------------------------------------
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08010355', 'Melantha', 'Arlie', 'Fowley', 'Northgraves', 'F', '11/02/1986', '988-135-1476', '5 Buhler Crossing', '18/05/2021', 'Gerente', 'Permanente', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08017954', 'Ingrim', 'Gregoire', 'Tremblett', 'Ainsworth', 'F', '27/10/1994', '923-662-0582', '005 Jana Point', '10/02/2021', 'Gerente', 'Permanente', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08012795', 'Lissa', 'Rahel', 'Fer', 'Nortunen', 'F', '30/09/1992', '505-994-7969', '87 Weeping Birch Drive', '10/07/2021', 'Gerente', 'Permanente', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08018007', 'Sheeree', 'Mollie', 'McCourtie', 'Goring', 'F', '19/04/1992', '481-354-8761', '66423 Veith Plaza', '02/06/2021', 'Mantenimi', 'Permanente', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08017137', 'Say', 'Hagen', 'Greenhowe', 'Camelia', 'M', '16/11/1987', '201-185-8041', '822 Declaration Street', '12/12/2021', 'Mantenimi', 'Permanente', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08014635', 'Garvey', 'Decca', 'Lovelock', 'Chaim', 'M', '14/08/1992', '662-301-2355', '19 Swallow Alley', '15/05/2021', 'Mantenimi', 'Permanente', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08012274', 'Kaylil', 'Quintana', 'Insull', 'Duling', 'F', '30/06/1996', '669-142-6015', '5 Sunnyside Court', '05/01/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08019211', 'Vilhelmina', 'Brandi', 'Bracco', 'Ellse', 'F', '23/01/1998', '501-883-3910', '523 Duke Street', '29/12/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08011022', 'Rene', 'Ewell', 'Guitt', 'Richin', 'M', '18/10/1999', '820-180-4921', '58884 Loomis Avenue', '13/04/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08017242', 'Bunny', 'Jami', 'Moncreiff', 'Kivell', 'F', '31/07/1992', '243-550-7246', '8 North Avenue', '10/09/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08014366', 'Lorenzo', 'Bent', 'Duncklee', 'Chastey', 'M', '26/07/1988', '638-356-3704', '415 Bunting Circle', '29/04/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08015953', 'Skip', 'Allissa', 'Kitchiner', 'Mallinar', 'M', '26/06/1991', '790-275-4410', '08790 Algoma Junction', '23/07/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08012085', 'Garner', 'Inger', 'Arnaudin', 'Leonardi', 'M', '12/04/1992', '250-479-5530', '851 Dottie Point', '14/04/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08012932', 'Devi', 'Sascha', 'Monery', 'Van der Beek', 'F', '26/12/1996', '197-817-5442', '339 Westport Court', '03/02/2021', 'Instructor', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08018255', 'Antin', 'Winny', 'Hannay', 'Pybworth', 'M', '23/12/1991', '133-365-5018', '13957 Hudson Road', '26/06/2021', 'Recepcion', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08017383', 'Ody', 'Demetri', 'Furbank', 'Rylatt', 'M', '20/04/1993', '925-230-3565', '877 Bayside Alley', '10/01/2021', 'Recepcion', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08013535', 'Shirlee', 'Arliene', 'Mitrikhin', 'Ottewell', 'F', '08/09/2000', '311-149-4407', '30191 Talmadge Hill', '01/12/2021', 'Masajista', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08016512', 'Nicoline', 'Ingaborg', 'Morcom', 'Whittlesee', 'F', '11/01/1996', '958-418-8986', '25 Cottonwood Place', '03/01/2021', 'Masajista', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08019019', 'Emilio', 'George', 'Tremble', 'Tuttle', 'M', '08/05/1986', '302-254-6920', '192 Stephen Parkway', '05/05/2021', 'Personal a', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08010976', 'Inger', 'Eberto', 'McIllrick', 'Burnsyde', 'M', '29/01/1991', '327-669-1655', '62 Golf Terrace', '01/07/2021', 'Personal a', 'Contrato', 'SUC01');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08059328', 'Lawry', 'Odey', 'Gruszczak', 'Peinke', 'M', '25/03/1990', '337-263-4395', '92 Shelley Plaza', '11/06/2021', 'Gerente', 'Permanente', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08055137', 'Faustine', 'Gwynne', 'Scarre', 'Gothrup', 'F', '01/12/1994', '708-723-6454', '769 Acker Alley', '18/08/2021', 'Gerente', 'Permanente', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08051895', 'Virginie', 'Miguelita', 'McInulty', 'Balfre', 'F', '18/12/1990', '238-374-3536', '137 Cardinal Terrace', '04/08/2021', 'Gerente', 'Permanente', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08052981', 'Alford', 'Patrizius', 'Hurleston', 'Kemetz', 'M', '08/07/1989', '940-982-0399', '14152 Redwing Road', '15/07/2021', 'Mantenimi', 'Permanente', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08054529', 'Dianne', 'Katerina', 'Shanks', 'March', 'F', '21/10/1989', '294-684-1814', '3763 Hoepker Street', '09/06/2021', 'Mantenimi', 'Permanente', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08051758', 'Gerrie', 'Ibbie', 'Dowty', 'Chadwell', 'F', '30/03/1999', '958-767-1350', '2505 Merrick Trail', '26/05/2021', 'Mantenimi', 'Permanente', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08050535', 'Hedi', 'Retha', 'Issacov', 'Haet', 'F', '10/04/1986', '347-295-1163', '56869 Evergreen Road', '28/10/2021', 'Instructor', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08059688', 'Vale', 'Kale', 'Bythway', 'Moulding', 'M', '16/03/2000', '178-150-1956', '5 Springview Center', '07/05/2021', 'Instructor', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08057257', 'Drucie', 'Cariotta', 'Spadeck', 'Gobourn', 'F', '19/09/1994', '102-842-0924', '8548 Shelley Place', '31/12/2021', 'Instructor', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('08056509', 'Olivero', 'Elston', 'Pere', 'Martina', 'M', '11/03/1986', '133-829-4719', '87141 Annamark Place', '30/07/2021', 'Instructor', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('00177875', 'Jeralee', 'Maighdiln', 'Goard', 'Pepperell', 'F', '30/12/1996', '951-944-8824', '99 Springs Plaza', '14/03/2021', 'Instructor', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('18310799', 'Sophi', 'Joellyn', 'Kmiec', 'Gulland', 'F', '12/06/1992', '626-519-9743', '2475 Graceland Road', '20/07/2021', 'Instructor', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('94123049', 'Levin', 'Erma', 'Ilyunin', 'd''Escoffier', 'M', '07/03/1986', '537-836-9621', '42281 Village Junction', '16/01/2021', 'Instructor', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('05585862', 'Amara', 'Shantee', 'Bonde', 'Lendrem', 'F', '26/08/1989', '618-315-8784', '530 Northwestern Parkway', '04/03/2021', 'Masajista', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('28693468', 'Archibald', 'Garwin', 'Tuckerman', 'Licas', 'M', '22/09/2002', '416-874-5531', '151 Rieder Junction', '08/03/2021', 'Masajista', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('32322835', 'Salem', 'Eliot', 'Madgwick', 'Freund', 'M', '02/04/1987', '409-101-4668', '007 Jay Trail', '30/12/2021', 'Masajista', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('95874412', 'Malachi', 'Mikkel', 'Josephsen', 'Fawbert', 'M', '18/09/1995', '999-200-6646', '9579 Acker Park', '23/04/2021', 'Recepcion', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('36051495', 'Ryon', 'Elena', 'Suffield', 'Clougher', 'M', '23/01/1988', '101-212-5446', '1 Gateway Center', '28/11/2021', 'Recepcion', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('62598916', 'Noell', 'Marillin', 'Kember', 'Ranshaw', 'F', '28/05/1996', '978-866-2953', '13 Morning Park', '03/05/2021', 'Personal a', 'Contrato', 'SUC02');
insert into EMPLEADO (DNI, Nombre1, Nombre2, Apellido1, Apellido2, Genero, FechaNac, Telefono, Direccion, FechaInicio, Tipo_Empleado, Tipo_Laboral, IdSucursal) values ('85985463', 'Brad', 'Reginald', 'Rathbone', 'Ferrick', 'M', '03/01/2002', '788-951-1619', '4 Vermont Alley', '17/05/2021', 'Personal a', 'Contrato', 'SUC02');
---------------------------------------------------FIN DE LOS INSERT DE EMPLEADO------------------------------------------

--3)Creando la tabla EMPLEADO PERMANENTE
CREATE TABLE EMPLEADO_PERMANENTE
(
DNI             VARCHAR(8),
SalarioBase     FLOAT NOT NULL,

CONSTRAINT PK_EMPPER PRIMARY KEY (DNI),
CONSTRAINT CHK_Salario CHECK (SalarioBase>10000),
CONSTRAINT FK_EmpPermanente FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

----------------------------------------------------INSERT DE EMPLEADOS PERMANENTES------------------------------------
insert into EMPLEADO_PERMANENTE values ('08010355', 18540.60);
insert into EMPLEADO_PERMANENTE values ('08017954', 17300.90);
insert into EMPLEADO_PERMANENTE values ('08012795', 16340.15);
insert into EMPLEADO_PERMANENTE values ('08018007', 10250.40);
insert into EMPLEADO_PERMANENTE values ('08017137', 10020.10);
insert into EMPLEADO_PERMANENTE values ('08014635', 11000.10);

insert into EMPLEADO_PERMANENTE values ('08059328', 17600.60);
insert into EMPLEADO_PERMANENTE values ('08055137', 16300.90);
insert into EMPLEADO_PERMANENTE values ('08051895', 15340.15);
insert into EMPLEADO_PERMANENTE values ('08052981', 10100.40);
insert into EMPLEADO_PERMANENTE values ('08054529', 10250.10);
insert into EMPLEADO_PERMANENTE values ('08051758', 10250.10);
----------------------------------------------------FIN DE INSERT DE EMPLEADOS PERMANENTES------------------------------------

--4)Creando la tabla EMPLEADO POR CONTRATO
CREATE TABLE EMPLEADO_POR_CONTRATO
(
DNI             VARCHAR(8),
VenciContrato   DATE NOT NULL,

CONSTRAINT PK_EMPCON PRIMARY KEY (DNI),
CONSTRAINT FK_EmpContrato FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT EMPLEADO_POR_CONTRATO----------------------------------------------------
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08012274', '15/01/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08019211', '17/02/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08011022', '09/12/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08017242', '18/01/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08014366', '08/10/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08015953', '16/01/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08012085', '09/03/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08012932', '25/11/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08018255', '25/04/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08017383', '05/01/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08013535', '02/11/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08016512', '07/07/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08019019', '03/07/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08010976', '05/10/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08050535','19/11/2022') ;
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08059688', '25/11/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08057257', '07/10/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08056509', '28/10/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('00177875', '24/11/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('18310799', '27/11/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('94123049', '10/01/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('05585862', '31/08/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('28693468', '18/08/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('32322835', '02/11/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('95874412', '20/01/2023');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('36051495', '30/08/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('62598916', '15/08/2022');
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('85985463', '04/01/2023');
-----------------------------------------FIN DE INSERT EMPLEADO_POR_CONTRATO----------------------------------------------------

--5)Creando la tabla GERENTE
CREATE TABLE GERENTE
(
DNI             VARCHAR(8),
Grado           VARCHAR(20) NOT NULL,

CONSTRAINT PK_GERENTE PRIMARY KEY (DNI),
CONSTRAINT FK_EmpGerente FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT GERENTE----------------------------------------------------
INSERT INTO GERENTE VALUES ('08010355', 'General');
INSERT INTO GERENTE VALUES ('08017954', 'Finanzas');
INSERT INTO GERENTE VALUES ('08012795', 'Ventas');
INSERT INTO GERENTE VALUES ('08059328', 'General');
INSERT INTO GERENTE VALUES ('08055137', 'Finanzas');
INSERT INTO GERENTE VALUES ('08051895', 'Ventas');
-----------------------------------------FIN DE INSERT GERENTE----------------------------------------------------

--6)Creando la tabla MANTENIMIENTO
CREATE TABLE MANTENIMIENTO
(
DNI             VARCHAR(8),
Locker          VARCHAR(5) NOT NULL CONSTRAINT Locker UNIQUE,

CONSTRAINT PK_MANTE PRIMARY KEY (DNI),
CONSTRAINT FK_EmpMante FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT MANTENIMIENTO----------------------------------------------------
INSERT INTO MANTENIMIENTO VALUES ('08018007','472-2');
INSERT INTO MANTENIMIENTO VALUES ('08017137','905-3');
INSERT INTO MANTENIMIENTO VALUES ('08014635','807-0');
INSERT INTO MANTENIMIENTO VALUES ('08052981','311-4');
INSERT INTO MANTENIMIENTO VALUES ('08054529','512-8');
INSERT INTO MANTENIMIENTO VALUES ('08051758','519-6');
-----------------------------------------FIN DE INSERT MANTENIMIENTO----------------------------------------------------

--7)Creando la tabla RECEPCIONISTA
CREATE TABLE RECEPCIONISTA
(
DNI             VARCHAR(8),
Caja            VARCHAR(10) NOT NULL CONSTRAINT Caja UNIQUE,

CONSTRAINT PK_RECEP PRIMARY KEY (DNI),
CONSTRAINT FK_EmpRecep FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT RECEPCIONISTA----------------------------------------------------
INSERT INTO RECEPCIONISTA VALUES ('08018255', '6940757597');
INSERT INTO RECEPCIONISTA VALUES ('08017383', '3188782314');
INSERT INTO RECEPCIONISTA VALUES ('95874412', '7382873870');
INSERT INTO RECEPCIONISTA VALUES ('36051495', '2418790134');
-----------------------------------------FIN DE INSERT RECEPCIONISTA----------------------------------------------------

--8)Creando la tabla INSTRUCTOR
CREATE TABLE INSTRUCTOR
(
DNI                   VARCHAR(8),
Especializacion_Ins   VARCHAR(10) NOT NULL,

CONSTRAINT PK_INSTRUCTOR PRIMARY KEY (DNI),
CONSTRAINT FK_EmpInstructor FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT INSTRUCTOR----------------------------------------------------
INSERT INTO INSTRUCTOR VALUES ('08012274', 'Aerobicos');
INSERT INTO INSTRUCTOR VALUES ('08019211', 'Cardio');
INSERT INTO INSTRUCTOR VALUES ('08011022', 'Yoga');
INSERT INTO INSTRUCTOR VALUES ('08017242', 'Funcional');
INSERT INTO INSTRUCTOR VALUES ('08014366', 'Aerobicos');
INSERT INTO INSTRUCTOR VALUES ('08015953', 'Yoga');
INSERT INTO INSTRUCTOR VALUES ('08012085', 'Danza');
INSERT INTO INSTRUCTOR VALUES ('08012932', 'Aerobico');
INSERT INTO INSTRUCTOR VALUES ('08050535', 'Aerobicos');
INSERT INTO INSTRUCTOR VALUES ('08059688', 'Cardio');
INSERT INTO INSTRUCTOR VALUES ('08057257', 'Weightlift');
INSERT INTO INSTRUCTOR VALUES ('08056509', 'Funcional');
INSERT INTO INSTRUCTOR VALUES ('00177875', 'Aerobicos');
INSERT INTO INSTRUCTOR VALUES ('18310799', 'Danza');
INSERT INTO INSTRUCTOR VALUES ('94123049', 'Aerobico');
-----------------------------------------FIN DE INSERT INSTRUCTOR----------------------------------------------------

--9)Creando la tabla PERSONAL ASEO
CREATE TABLE PERSONAL_ASEO
(
DNI             VARCHAR(8),
Locker2          VARCHAR(5) NOT NULL CONSTRAINT Locker2 UNIQUE,

CONSTRAINT PK_ASEO PRIMARY KEY (DNI),
CONSTRAINT FK_EmpAseo FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT PERSONAL_ASEO----------------------------------------------------
INSERT INTO PERSONAL_ASEO VALUES ('08019019', '70400');
INSERT INTO PERSONAL_ASEO VALUES ('08010976', '93063');
INSERT INTO PERSONAL_ASEO VALUES ('62598916', '04796');
INSERT INTO PERSONAL_ASEO VALUES ('85985463', '07371');
-----------------------------------------FIN DE INSERT PERSONAL_ASEO----------------------------------------------------

--10)Creando la tabla MASAJISTA
CREATE TABLE MASAJISTA
(
DNI                     VARCHAR(8),
Especializacion_Masaje  VARCHAR(10) NOT NULL,

CONSTRAINT PK_MASAJISTA PRIMARY KEY (DNI),
CONSTRAINT FK_EmpMasajista FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT MASAJISTA----------------------------------------------------
INSERT INTO MASAJISTA VALUES ('08013535', 'Deportivo');
INSERT INTO MASAJISTA VALUES ('08016512', 'Quiromasaj');
INSERT INTO MASAJISTA VALUES ('05585862', 'Terapeutic');
INSERT INTO MASAJISTA VALUES ('28693468', 'Deportivo');
INSERT INTO MASAJISTA VALUES ('32322835', 'Quiromasaje');
-----------------------------------------FIN DE INSERT MASAJISTA----------------------------------------------------

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
Marca            VARCHAR(10) NOT NULL,
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
