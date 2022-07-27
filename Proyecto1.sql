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
Telefono        VARCHAR(12) NOT NULL CONSTRAINT Telefono UNIQUE,
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
Salario         FLOAT NOT NULL,

CONSTRAINT PK_EMPCON PRIMARY KEY (DNI),
CONSTRAINT CHK_SalarioContrato CHECK (Salario>7000),
CONSTRAINT FK_EmpContrato FOREIGN KEY (DNI) REFERENCES EMPLEADO(DNI)
)

-----------------------------------------INSERT EMPLEADO_POR_CONTRATO----------------------------------------------------
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08012274', '15/01/2023', 9550.09);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08019211', '17/02/2023', 9550.09);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08011022', '09/12/2022', 10000.50);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08017242', '18/01/2023', 10500.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08014366', '08/10/2022', 10500.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08015953', '16/01/2023', 8340.70);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08012085', '09/03/2023', 10200.60);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08012932', '25/11/2022', 8000.20);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08018255', '25/04/2023', 9300.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08017383', '05/01/2023', 10200.60);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08013535', '02/11/2022', 9000.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08016512', '07/07/2023', 10200.60);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08019019', '03/07/2023', 8000.20);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08010976', '05/10/2022', 8340.70);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08050535','19/11/2022',  9550.09) ;
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08059688', '25/11/2022', 9550.09);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08057257', '07/10/2022', 10000.50);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('08056509', '28/10/2022', 10500.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('00177875', '24/11/2022', 10500.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('18310799', '27/11/2022', 10500.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('94123049', '10/01/2023', 8340.70);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('05585862', '31/08/2022', 9000.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('28693468', '18/08/2022', 9300.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('32322835', '02/11/2022', 9300.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('95874412', '20/01/2023', 8000.20);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('36051495', '30/08/2022', 9000.00);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('62598916', '15/08/2022', 10200.60);
INSERT INTO EMPLEADO_POR_CONTRATO VALUES ('85985463', '04/01/2023', 9000.00);
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

-----------------------------------------INSERT HERRAMIENTAS_MANTENIMIENTO----------------------------------------------------
INSERT INTO HERRAMIENTAS_MANTENIMIENTO VALUES('08018007','Llave Inglesa');
INSERT INTO HERRAMIENTAS_MANTENIMIENTO VALUES('08017137','Clavo Acero');
INSERT INTO HERRAMIENTAS_MANTENIMIENTO VALUES('08014635','Martillo');
INSERT INTO HERRAMIENTAS_MANTENIMIENTO VALUES('08054529','Taladro');
INSERT INTO HERRAMIENTAS_MANTENIMIENTO VALUES('08051758','Cincel');
INSERT INTO HERRAMIENTAS_MANTENIMIENTO VALUES('08052981','Desarmador');
-----------------------------------------FIN DE INSERT HERRAMIENTAS_MANTENIMIENTO----------------------------------------------------

--12)Creando la tabla PRODUCTOS ASEO
CREATE TABLE PRODUCTOS_ASEO
(
DNI           VARCHAR(8),
Prod_Aseo     VARCHAR(10),

CONSTRAINT PK_PRODASEO PRIMARY KEY (DNI,Prod_Aseo),
CONSTRAINT FK_AseoProd FOREIGN KEY (DNI) REFERENCES PERSONAL_ASEO(DNI)
)

-----------------------------------------INSERT PRODUCTOS_ASEO----------------------------------------------------
INSERT INTO PRODUCTOS_ASEO VALUES('08019019', 'Cloro');
INSERT INTO PRODUCTOS_ASEO VALUES('08010976', 'Escoba');
INSERT INTO PRODUCTOS_ASEO VALUES('62598916', 'Guantes Latex');
INSERT INTO PRODUCTOS_ASEO VALUES('85985463', 'Trapeador');
INSERT INTO PRODUCTOS_ASEO VALUES('08010976', 'Franela Tela');
INSERT INTO PRODUCTOS_ASEO VALUES('85985463', 'Jabon');
-----------------------------------------FIN DE INSERT PRODUCTOS_ASEO----------------------------------------------------

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
----------------------------------------------------INSERT DE CLIENTES-------------------------------------------------------------
INSERT INTO CLIENTE VALUES ('08441271','Maria','Hernandez','F','84444136','MED','Col.El Carrizal','12/01/1989','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('08501702','Jose','Flores','M','74564950','PER','Col.Kennedy','31/05/1963','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('08123063','Santos','Rodriquez','M','78740628','PER','Col.3 de Mayo','05/06/1996','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('08953984','Juan','Cruz','M','88072958','OTRO','Col.Kennedy','15/03/1964','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('08783155','Carlos','Lopez','M','48437786','MED','Col.Cerro Grande','06/07/2000','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('08796446','Luis','Sanchez','M','35241279','MED','Col.Zapote Norte','07/02/1971','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('08986507','Rosa','Mejia','F','80971022','PER','Col.Zapote Centro','14/06/1996','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('07421008','Ana','Martinez','F','81819276','OTRO','Col.El Carrizal','09/09/1972','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('08407631','Oscar','Reyes','M','72197341','PER','Col.Miraflores','01/04/1989','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('84942343','Jorge','Vasquez','M','22042829','PER','Col.Espiritu Santo','19/05/1998','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('96800123','Francisca','Garcia','F','98436149','OTRO','Col.El Pedregal','01/10/1984','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('80246012','Juana','Rivera','F','25878404','MED','Col.Torocagua','22/02/1999','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('08080051','Miguel','Perez','M','38205936','MED','Col.Las Mercedes','12/03/1997','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('17970046','Hector','Gomez','M','35361968','PER','Col.Mayangle','12/02/1981','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('08109568','Manuel','Hernandez','M','84137553','MED','Col.Independencia','03/03/1978','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('11310023','Maria','Pineda','F','86663674','MED','Col.Miraflores','16/09/1987','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('01751042','Pedro','Diaz','M','52700630','PER','Col.Cerro Grande','07/02/1978','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('09498123','Gloria','Ramos','F','37835273','PER','Col.Kennedy','18/11/1988','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('36650123','Blanca','Hernandez','F','20289314','PER','Col.Zapote Norte','14/06/1996','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('63540045','Reina','Aguilar','F','46439975','MED','Col.Fuerzas Unidas','27/10/1995','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('60850067','Sandra','Lopez','F','25610501','MED','Col.La Flor','28/01/1983','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('02335043','Norma','Rodriguez','F','91413229','OTRO','Col.Campo Cielo','09/08/1998','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('02334013','Victor','Ramirez','M','67554539','PER','Col.Miraflores','11/11/1977','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('00622746','Marco','Rodriguez','M','83368001','OTRO','Col.21 de Octubre','19/09/1997','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('08615032','Martha','Lazo','F','73463915','MED','Col.El Carrizal','05/01/1976','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('08364124','Angel','Alvarado','M','76587991','MED','Col.21 de Febrero','26/08/1994','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('08390732','Iris','Castro','F','63729902','PER','Col.Las Uvas','01/01/2001','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('81140125','Julia','Velasquez','F','16148733','PER','Col.Miraflores','05/12/1993','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('68860356','Karla','Romero','F','57464779','OTRO','Col.Buenos Aires','10/12/1996','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('08154607','Marvin','Martinez','M','65005839','MED','Col.Mayangle','19/02/1996','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('06875454','Alba','Castillo','F','12662824','MED','Col.3 de Mayo','26/09/1986','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('09138687','Ramon','Orellana','M','39348029','PER','Col.El Pedregalito','06/09/1996','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('09386567','Jesus','Mendoza','M','51226512','PER','Col.Torocagua','18/06/1984','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('08547345','Karen','Martinez','F','53728952','OTRO','Col.Kennedy','10/01/2000','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('07914234','Olga','Murillo','F','14394852','MED','Col.Espiritu Santo','17/06/1985','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('92430265','Wilmer','Avila','M','98677611','OTRO','Col.Centroamerica','16/10/1960','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('06758765','Carmen','Martinez','F','73740932','OTRO','Col.3 de Mayo','06/09/1988','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('00190423','Nelson','Lopez','M','33033841','PER','Col.El Carrizal','05/07/1970','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('06714576','Claudia','Gonzales','F','25947413','MED','Col.Miraflores','17/04/1992','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('09229345','Doris','Zelaya','F','84995698','MED','Col.Independencia','03/03/1976','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('21602355','Edwin','Padilla','M','62019107','MED','Col.Suyapa','21/10/1977','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('11350234','Marta','Santos','F','84876898','PER','Col.Las Mercedes','07/12/1985','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('84585576','Wendy','Lopez','F','57197127','MED','Col.San Francisco','25/01/1985','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('19130234','Francisca','Paz','F','88642529','PER','Col.Fuerzas Unidas','25/05/1971','80050535','SUC02');
INSERT INTO CLIENTE VALUES ('88740175','Irma','Bonilla','F','74384439','OTRO','Col.Cerro Grande','18/01/1978','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('07179875','Sonia','Herrera','F','43255629','PER','Col.Centroamerica','10/05/1974','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('04280543','Mirian','Hernandez','F','79369196','PER','Col.Smith','06/07/1988','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('58176764','Cesar','Medina','M','67044417','PER','Col.El Carrizal','10/06/1991','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('94173453','Vilma','Torres','F','27493559','MED','Col.Villanueva','04/01/1968','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('61662342','Roberto','Maldonado','M','56854071','MED','Col.Suyapa','02/11/1963','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('74080432','Dilcia','Amaya','F','92587663','MED','Col.3 de Mayo','27/01/1987','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('71944212','Mirna','Ortiz','F','47392567','MED','Col.Zapote Norte','23/04/1971','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('44673421','Melvin','Mendez','M','87419978','OTRO','Col.Mayangle','03/10/1998','08012274','SUC01');
INSERT INTO CLIENTE VALUES ('66594564','Denis','Hernandez','M','99396923','MED','Col.Kennedy','27/08/1989','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('87872342','Elsa','Banegas','F','32183796','PER','Col.Miraflores','17/10/1981','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('09360234','Glenda','Amador','F','70295535','PER','Col.El Pedregal','21/03/1966','85985463','SUC02');
INSERT INTO CLIENTE VALUES ('86322342','Julia','Alvarez','F','33495189','MED','Col.Centroamerica','07/09/1986','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('10780887','German','Maradiaga','M','70254042','PER','Col.La Flor','22/08/2002','08050535','SUC02');
INSERT INTO CLIENTE VALUES ('77095654','Lourdes','Molina','F','50720538','OTRO','Col.Campo Cielo','17/07/1978','08019211','SUC01');
INSERT INTO CLIENTE VALUES ('81980456','Daniel','Barahona','M','30537928','PER','Col.Kennedy','01/06/1989','08019211','SUC01');
----------------------------------------------------FIN INSERT CLIENTES---------------------------------------------------------

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
----------------------------------------------------INSERT DE FACTURA--------------------------------------------------------------
INSERT INTO FACTURA VALUES ('6786527992','01/01/2021','Tarjeta',100.00,'149561678088',400.00,'08441271','08012274');
INSERT INTO FACTURA VALUES ('4043456403','01/12/2021','Efectivo',100.00,'329380336914',400.00,'08501702','08050535');
INSERT INTO FACTURA VALUES ('7040064967','01/04/2021','Tarjeta',0.00,'524271336402',500.00,'08123063','85985463');
INSERT INTO FACTURA VALUES ('2499486700','01/04/2021','Efectivo',0.00,'883203483218',800.00,'08953984','85985463');
INSERT INTO FACTURA VALUES ('7586137308','01/04/2021','Efectivo',0.00,'781652163015',500.00,'08783155','08019211');
INSERT INTO FACTURA VALUES ('1897370737','01/04/2022','Efectivo',100.00,'585562627315',400.00,'08796446','08050535');
INSERT INTO FACTURA VALUES ('2157156505','01/05/2021','Tarjeta',100.00,'614040950470',400.00,'08986507','08019211');
INSERT INTO FACTURA VALUES ('8163394141','01/07/2022','Efectivo',0.00,'848158242634',800.00,'07421008','08019211');
INSERT INTO FACTURA VALUES ('7143958334','01/08/2022','Efectivo',0.00,'136184660015',500.00,'08407631','08012274');
INSERT INTO FACTURA VALUES ('6294392024','01/12/2022','Efectivo',0.00,'403805477576',500.00,'84942343','08012274');
INSERT INTO FACTURA VALUES ('8554861111','01/12/2020','Efectivo',100.00,'449615962107',640.00,'96800123','08019211');
INSERT INTO FACTURA VALUES ('7252292160','01/08/2021','Tarjeta',100.00,'429157715496',640.00,'80246012','08050535');
INSERT INTO FACTURA VALUES ('8453887663','01/12/2021','Efectivo',0.00,'220155043150',500.00,'08080051','85985463');
INSERT INTO FACTURA VALUES ('6102932265','01/08/2022','Efectivo',0.00,'331695323669',500.00,'17970046','08019211');
INSERT INTO FACTURA VALUES ('6137550676','01/09/2022','Efectivo',0.00,'312714906496',500.00,'08109568','85985463');
INSERT INTO FACTURA VALUES ('4327686475','01/03/2022','Efectivo',0.00,'178791286574',500.00,'11310023','08050535');
INSERT INTO FACTURA VALUES ('5131861135','01/02/2022','Tarjeta',0.00,'628656198988',500.00,'01751042','85985463');
INSERT INTO FACTURA VALUES ('1984447559','01/11/2022','Efectivo',0.00,'259301034665',500.00,'09498123','08012274');
INSERT INTO FACTURA VALUES ('9168497774','01/03/2022','Tarjeta',100.00,'669569146859',640.00,'36650123','08012274');
INSERT INTO FACTURA VALUES ('9473739946','01/10/2022','Efectivo',100.00,'245951373330',640.00,'63540045','85985463');
INSERT INTO FACTURA VALUES ('7147860049','01/12/2021','Efectivo',100.00,'826357305334',640.00,'60850067','08050535');
INSERT INTO FACTURA VALUES ('9519462147','01/11/2021','Efectivo',0.00,'324947894184',500.00,'02335043','08019211');
INSERT INTO FACTURA VALUES ('9288948471','01/10/2021','Tarjeta',100.00,'89466812753',400.00,'02334013','08050535');
INSERT INTO FACTURA VALUES ('7436603879','01/09/2021','Efectivo',0.00,'439070087571',500.00,'00622746','85985463');
INSERT INTO FACTURA VALUES ('4923659535','01/08/2021','Efectivo',0.00,'302672687301',500.00,'08615032','08019211');
INSERT INTO FACTURA VALUES ('5395733460','01/07/2021','Tarjeta',0.00,'968693034163',500.00,'08364124','08012274');
INSERT INTO FACTURA VALUES ('3517415440','01/06/2022','Efectivo',0.00,'142134781991',500.00,'08390732','08012274');
INSERT INTO FACTURA VALUES ('4105515558','01/05/2022','Tarjeta',0.00,'961760765038',500.00,'81140125','08019211');
INSERT INTO FACTURA VALUES ('8001753223','01/04/2022','Efectivo',100.00,'128645323619',400.00,'68860356','08019211');
INSERT INTO FACTURA VALUES ('9279417851','01/03/2022','Tarjeta',100.00,'296952576418',400.00,'08154607','85985463');

----------------------------------------------------INSERT DE FACTURA--------------------------------------------------------------



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

----------------------------------------------------INSERT DE DETALLE FACTURA--------------------------------------------------------------
INSERT INTO DETALLE_FACTURA VALUES ('6786527992','47106',2,240.00,'P1');
INSERT INTO DETALLE_FACTURA VALUES ('4043456403','15782',1,430.00,'P20');
INSERT INTO DETALLE_FACTURA VALUES ('7040064967','31366',0,0.00,'P12');
INSERT INTO DETALLE_FACTURA VALUES ('2499486700','40685',0,0.00,'P11');
INSERT INTO DETALLE_FACTURA VALUES ('7586137308','43348',0,0.00,'P9');
INSERT INTO DETALLE_FACTURA VALUES ('1897370737','43989',1,120.00,'P16');
INSERT INTO DETALLE_FACTURA VALUES ('2157156505','45350',1,120.00,'P1');
INSERT INTO DETALLE_FACTURA VALUES ('8163394141','39930',0,0.00,'P3');
INSERT INTO DETALLE_FACTURA VALUES ('7143958334','20778',0,0.00,'P4');
INSERT INTO DETALLE_FACTURA VALUES ('6294392024','46260',0,0.00,'P5');
INSERT INTO DETALLE_FACTURA VALUES ('8554861111','54000',3,360.00,'P7');
INSERT INTO DETALLE_FACTURA VALUES ('7252292160','39053',1,430.00,'P6');
INSERT INTO DETALLE_FACTURA VALUES ('8453887663','39005',0,0.00,'P9');
INSERT INTO DETALLE_FACTURA VALUES ('6102932265','51361',0,0.00,'P17');
INSERT INTO DETALLE_FACTURA VALUES ('6137550676','21095',0,0.00,'P18');
INSERT INTO DETALLE_FACTURA VALUES ('4327686475','39720',0,0.00,'P19');
INSERT INTO DETALLE_FACTURA VALUES ('5131861135','20090',0,0.00,'P20');
INSERT INTO DETALLE_FACTURA VALUES ('1984447559','24778',0,0.00,'P10');
INSERT INTO DETALLE_FACTURA VALUES ('9168497774','12501',1,120.00,'P5');
INSERT INTO DETALLE_FACTURA VALUES ('9473739946','33799',1,430.00,'P8');
INSERT INTO DETALLE_FACTURA VALUES ('7147860049','26490',1,430.00,'P12');
INSERT INTO DETALLE_FACTURA VALUES ('9519462147','25540',0,0.00,'P13');
INSERT INTO DETALLE_FACTURA VALUES ('9288948471','33935',2,240.00,'P14');
INSERT INTO DETALLE_FACTURA VALUES ('7436603879','28287',0,0.00,'P15');
INSERT INTO DETALLE_FACTURA VALUES ('4923659535','16182',0,0.00,'P1');
INSERT INTO DETALLE_FACTURA VALUES ('5395733460','15182',0,0.00,'P19');
INSERT INTO DETALLE_FACTURA VALUES ('3517415440','22998',0,0.00,'P18');
INSERT INTO DETALLE_FACTURA VALUES ('4105515558','26850',0,0.00,'P3');
INSERT INTO DETALLE_FACTURA VALUES ('8001753223','13246',2,240.00,'P2');
INSERT INTO DETALLE_FACTURA VALUES ('9279417851','45334',1,120.00,'P1');
----------------------------------------------------FIN INSERT DETALLE FACTURA--------------------------------------------------------------


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
----------------------------------------------------INSERT DE CLASE------------------------------------------------------------------
INSERT INTO CLASE VALUES ('S1Z-0700','7:00 AM','4','08010976');
INSERT INTO CLASE VALUES ('S1Z-0900','9:00 AM','4','08010976');
INSERT INTO CLASE VALUES ('S1Z-1400','2:00 PM','4','08010976');
INSERT INTO CLASE VALUES ('S1Z-1700','5:00 PM','4','08010976');
INSERT INTO CLASE VALUES ('S1A-0800','8:00 AM','5','08019019');
INSERT INTO CLASE VALUES ('S1A-1130','11:30 AM','5','08019019');
INSERT INTO CLASE VALUES ('S1A-1600','4:00 PM','5','08019019');
INSERT INTO CLASE VALUES ('S1S-0900','9:00 AM','3','08016512');
INSERT INTO CLASE VALUES ('S1S-1400','2:00 PM','3','08016512');
INSERT INTO CLASE VALUES ('S1S-1900','7:00 PM','3','08016512');
INSERT INTO CLASE VALUES ('S1Y-0600','6:00 AM','6','08013535');
INSERT INTO CLASE VALUES ('S1Y-1700','5:00 PM','6','08013535');
INSERT INTO CLASE VALUES ('S2Z-0700','7:00 AM','4','08059688');
INSERT INTO CLASE VALUES ('S2Z-0900','9:00 AM','4','08059688');
INSERT INTO CLASE VALUES ('S2Z-1400','2:00 PM','4','08059688');
INSERT INTO CLASE VALUES ('S2Z-1700','5:00 PM','4','08059688');
INSERT INTO CLASE VALUES ('S2A-0800','8:00 AM','5','08057257');
INSERT INTO CLASE VALUES ('S2A-1130','11:30 AM','5','08057257');
INSERT INTO CLASE VALUES ('S2A-1600','4:00 PM','5','08057257');
INSERT INTO CLASE VALUES ('S2S-0900','9:00 AM','3','08056509');
INSERT INTO CLASE VALUES ('S2S-1400','2:00 PM','3','08056509');
INSERT INTO CLASE VALUES ('S2S-1900','7:00 PM','3','08056509');
INSERT INTO CLASE VALUES ('S2Y-0600','6:00 AM','6','00177875');
INSERT INTO CLASE VALUES ('S2Y-1700','5:00 PM','6','00177875');

----------------------------------------------------FIN INSERT DE CLASE--------------------------------------------------------------



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

----------------------------------------------------INSERT DE MAQUINARIA------------------------------------------------------------------
INSERT INTO MAQUINARIA VALUES ('MQ01', 10, 'Cardio', 'Bien', 'Caminadora EX', 'S1Z-0700', 'SUC01' );
INSERT INTO MAQUINARIA VALUES ('MQ02', 13, 'Spinnig', 'Regular', 'Bicicleta RO', 'S1Z-0700', 'SUC01' );
INSERT INTO MAQUINARIA VALUES ('MQ03', 7, 'Pesas', 'Mal', 'Prensa', 'S1Z-0700', 'SUC02' );
INSERT INTO MAQUINARIA VALUES ('MQ04', 5, 'Spinnig', 'Mal', 'Eliptica', 'S1Z-0700', 'SUC01' );
INSERT INTO MAQUINARIA VALUES ('MQ05', 20, 'Pesas', 'Bien', 'Paralelas', 'S1Z-0700', 'SUC02' );
INSERT INTO MAQUINARIA VALUES ('MQ06', 6, 'Cardio', 'Mal', 'Stepper', 'S1Z-0700', 'SUC01' );
INSERT INTO MAQUINARIA VALUES ('MQ07', 12, 'Cardio', 'Bien', 'Remo', 'S1Z-0700', 'SUC02' );
INSERT INTO MAQUINARIA VALUES ('MQ08', 7, 'Pesas', 'Regular', 'Banco Press', 'S1Z-0700', 'SUC02' );
INSERT INTO MAQUINARIA VALUES ('MQ09', 3, 'Cardio', 'Regular', 'Escaladora', 'S1Z-0700', 'SUC01' );
INSERT INTO MAQUINARIA VALUES ('MQ010', 18, 'Spinning', 'Bien', 'Bicicleta Estatica', 'S1Z-0700', 'SUC02' );
----------------------------------------------------FIN DE INSERT DE MAQUINARIA------------------------------------------------------------------

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

----------------------------------------------------INSERT DE EMP_REPARA_MAQUINARIA------------------------------------------------------------------
INSERT INTO EMP_REPARA_MAQUINARIA VALUES('08018007','MQ02','02/JUN/2021');
INSERT INTO EMP_REPARA_MAQUINARIA VALUES('08017137','MQ03','12/MAY/2021');
INSERT INTO EMP_REPARA_MAQUINARIA VALUES('08014635','MQ04','23/SEP/2021');
INSERT INTO EMP_REPARA_MAQUINARIA VALUES('08052981','MQ06','15/OCT/2021');
INSERT INTO EMP_REPARA_MAQUINARIA VALUES('08054529','MQ08','01/FEB/2022');
INSERT INTO EMP_REPARA_MAQUINARIA VALUES('08051758','MQ09','30/JAN/2022');
----------------------------------------------------FIN DE INSERT DE EMP_REPARA_MAQUINARIA------------------------------------------------------------------

--25)Creando la tabla CLIENTE RECIBE CLASES
CREATE TABLE CLIENTE_RECIBE_CLASES
(
IdClase       VARCHAR(10) NOT NULL,
DniCliente    VARCHAR(8) NOT NULL,

CONSTRAINT PK_RECIBECLI PRIMARY KEY (IdClase,DniCliente),
CONSTRAINT FK_RecibeClase FOREIGN KEY (IdClase) REFERENCES CLASE(IdClase),
CONSTRAINT FK_RecibeCliente FOREIGN KEY (DniCliente) REFERENCES CLIENTE(DniCliente)
)
----------------------------------------------------INSERT DE CLIENTE RECIBE CLASES----------------------------------------------------------------------
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2A-0800','81980456');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2S-0900','06875454');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1A-1130','09138687');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1Z-0700','09386567');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1Y-0600','08547345');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2Z-0900','07914234');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2A-0800','92430265');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1Y-1700','06758765');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1S-1900','00190423');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2Y-1700','06714576');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2A-1130','09229345');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1Z-1400','21602355');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2Z-0700','11350234');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2Z-1400','84585576');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2Z-1700','19130234');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1Z-1700','88740175');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1Z-0900','07179875');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2A-1130','04280543');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1A-0800','58176764');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2A-1600','94173453');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1A-1600','61662342');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1S-0900','74080432');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1S-1400','71944212');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2Y-0600','08154607');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1Z-0700','09138687');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2S-1400','07914234');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S1S-0900','21602355');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2S-1900','19130234');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2A-0800','19130234');
INSERT INTO CLIENTE_RECIBE_CLASES VALUES ('S2Z-1400','92430265');
----------------------------------------------------FIN INSERT DE CLIENTE RECIBE CLASES------------------------------------------------------------------


--26)Creando la tabla MASAJISTA PROPORCIONA SERVICIOS
CREATE TABLE MASAJISTA_PROPORCIONA_SERVICIOS
(
IdServicio       VARCHAR(10) NOT NULL,
DniEmpleado      VARCHAR(8) NOT NULL,

CONSTRAINT PK_PROPO PRIMARY KEY (IdServicio,DniEmpleado),
CONSTRAINT FK_PropoServi FOREIGN KEY (IdServicio) REFERENCES SERVICIO(Id_Servicio),
CONSTRAINT FK_PropoEmp FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO(DNI)
)
---------------------------------------------------- INSERT DE MASAJISTA PROPORCIONA SERVICIOS---------------------------------------------------------------------
INSERT INTO MASAJISTA_PROPORCIONA_SERVICIOS VALUES ('7','08013535');
INSERT INTO MASAJISTA_PROPORCIONA_SERVICIOS VALUES ('8','08016512');
INSERT INTO MASAJISTA_PROPORCIONA_SERVICIOS VALUES ('7','05585862');
INSERT INTO MASAJISTA_PROPORCIONA_SERVICIOS VALUES ('7','28693468');
INSERT INTO MASAJISTA_PROPORCIONA_SERVICIOS VALUES ('8','08013535');
INSERT INTO MASAJISTA_PROPORCIONA_SERVICIOS VALUES ('8','05585862');
----------------------------------------------------FIN INSERT DE MASAJISTA PROPORCIONA SERVICIOS------------------------------------------------------------------



--27)Creando la tabla MEMBRESIA
CREATE TABLE MEMBRESIA
(
IdMembresia         VARCHAR(10) NOT NULL,
Precio              FLOAT NOT NULL,
Fecha_Inscripcion   DATE NOT NULL,

CONSTRAINT PK_MEMBRESIA PRIMARY KEY (IdMembresia),
CONSTRAINT CHK_PrecioMem CHECK (Precio>300 AND Precio<700)
)
----------------------------------------------------INSERT DE MEMBRESIA--------------------------------------------------------------------------
INSERT INTO MEMBRESIA VALUES ('MEM-000001', 654.53, '25/10/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000002', 330.77, '26/01/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000003', 435.95, '13/02/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000004', 432.10, '19/03/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000005', 345.16, '28/03/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000006', 350.54, '19/11/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000007', 670.05, '13/05/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000008', 313.72, '16/02/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000009', 451.64, '06/06/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000010', 319.22, '13/11/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000011', 576.52, '13/07/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000012', 318.60, '09/05/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000013', 630.44, '08/12/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000014', 350.56, '18/02/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000015', 589.88, '02/08/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000016', 389.48, '30/10/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000017', 372.65, '24/10/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000018', 640.75, '15/04/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000019', 455.63, '26/07/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000020', 374.36, '10/09/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000021', 376.52, '14/09/2020');
INSERT INTO MEMBRESIA VALUES ('MEM-000022', 695.44, '26/01/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000023', 372.00, '08/03/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000024', 686.98, '07/01/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000025', 582.53, '31/10/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000026', 415.57, '24/12/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000027', 373.86, '30/05/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000028', 522.26, '07/12/2020');
INSERT INTO MEMBRESIA VALUES ('MEM-000029', 370.36, '07/12/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000030', 561.14, '10/10/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000031', 302.13, '08/03/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000032', 511.95, '08/07/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000033', 442.34, '29/10/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000034', 308.95, '09/02/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000035', 655.24, '03/07/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000036', 416.09, '21/06/2020');
INSERT INTO MEMBRESIA VALUES ('MEM-000037', 351.70, '08/05/2020');
INSERT INTO MEMBRESIA VALUES ('MEM-000038', 559.11, '19/01/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000039', 354.12, '12/08/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000040', 698.42, '18/05/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000041', 344.84, '01/04/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000042', 679.84, '25/08/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000043', 650.34, '14/12/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000044', 374.13, '06/06/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000045', 323.00, '25/02/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000046', 491.93, '04/12/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000047', 561.24, '30/01/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000048', 666.10, '20/10/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000049', 372.43, '01/11/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000050', 652.34, '16/11/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000051', 532.88, '13/01/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000052', 444.85, '26/06/2021');
INSERT INTO MEMBRESIA VALUES ('MEM-000053', 337.98, '21/04/2020');
INSERT INTO MEMBRESIA VALUES ('MEM-000054', 656.27, '18/02/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000055', 426.92, '10/03/2017');
INSERT INTO MEMBRESIA VALUES ('MEM-000056', 580.72, '11/11/2019');
INSERT INTO MEMBRESIA VALUES ('MEM-000057', 308.03, '08/10/2018');
INSERT INTO MEMBRESIA VALUES ('MEM-000058', 571.39, '01/09/2020');
INSERT INTO MEMBRESIA VALUES ('MEM-000059', 372.32, '17/01/2022');
INSERT INTO MEMBRESIA VALUES ('MEM-000060', 305.55, '19/03/2021');
----------------------------------------------------FIN INSERT DE MEMBRESIA----------------------------------------------------------------------



--28)Creando la tabla MEMBRESIA REGULAR
CREATE TABLE MEMBRESIA_REGULAR
(
IdMembresia       VARCHAR(10) NOT NULL,
Promocion         VARCHAR(50),

CONSTRAINT PK_MEMREG PRIMARY KEY (IdMembresia),
CONSTRAINT FK_RegMem FOREIGN KEY (IdMembresia) REFERENCES MEMBRESIA(IdMembresia)
)
----------------------------------------------------INSERT DE MEMBRESIA REGULAR--------------------------------------------------------------------------
INSERT INTO MEMBRESIA VALUES ('MEM-000002','50% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000003','15% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000004','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000005','75% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000006','2X1 en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000008','25% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000009','30% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000010','10% Descuento en Parejas');
INSERT INTO MEMBRESIA VALUES ('MEM-000012','75% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000014','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000016','2X1 en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000017','75% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000019','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000020','75% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000021','15% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000023','15% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000026','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000027','2X1 en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000029','2X1 en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000031','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000033','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000034','2X1 en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000036','75% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000037','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000039','15% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000041','75% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000044','10% Descuento en Parejas');
INSERT INTO MEMBRESIA VALUES ('MEM-000045','2X1 en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000046','15% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000049','15% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000052','50% Descuento en Productos');
INSERT INTO MEMBRESIA VALUES ('MEM-000053','2X1 en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000055','10% Descuento en Parejas');
INSERT INTO MEMBRESIA VALUES ('MEM-000057','15% Descuento en Mensualidad');
INSERT INTO MEMBRESIA VALUES ('MEM-000059','10% Descuento en Parejas');
INSERT INTO MEMBRESIA VALUES ('MEM-000060','15% Descuento en Mensualidad');

----------------------------------------------------FIN INSERT DE MEMBRESIA REGULAR----------------------------------------------------------------------


--29)Creando la tabla MEMBRESIA VIP
CREATE TABLE MEMBRESIA_VIP
(
IdMembresia       VARCHAR(10) NOT NULL,
Privilegio        VARCHAR(50),

CONSTRAINT PK_MEMBRESIAVIP PRIMARY KEY (IdMembresia),
CONSTRAINT FK_VIPMem FOREIGN KEY (IdMembresia) REFERENCES MEMBRESIA(IdMembresia)
)
----------------------------------------------------INSERT DE MEMBRESIA VIP--------------------------------------------------------------------------
INSERT INTO MEMBRESIA VALUES ('MEM-000001', 'Pase para 5 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000007', 'Pase para 2 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000011', 'Pase para 5 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000013', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000015', 'Pase para 3 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000018', 'Pase para 3 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000022', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000024', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000025', 'Pase para 3 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000028', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000030', 'Pase para 3 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000032', 'Pase para 5 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000035', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000038', 'Pase para 3 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000040', 'Pase para 5 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000042', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000043', 'Pase para 3 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000047', 'Pase para 2 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000048', 'Pase para 5 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000050', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000051', 'Pase para 2 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000054', 'Pase para 5 personas al mes');
INSERT INTO MEMBRESIA VALUES ('MEM-000056', 'Productos Gratuitos');
INSERT INTO MEMBRESIA VALUES ('MEM-000058', 'Pase para 2 personas al mes');
----------------------------------------------------FIN INSERT DE MEMBRESIA VIP----------------------------------------------------------------------



--30)Creando la tabla MEMBRESIA VIP ACCEDE A SERVICIOS
CREATE TABLE MEMBRESIAVIP_ACCEDE_A_SERVICIOS
(
IdMembresia       VARCHAR(10) NOT NULL,
IdServicio        VARCHAR(10),

CONSTRAINT PK_ACCEDESERV PRIMARY KEY (IdMembresia,IdServicio),
CONSTRAINT FK_VIPMembre FOREIGN KEY (IdMembresia) REFERENCES MEMBRESIA(IdMembresia),
CONSTRAINT FK_VIPServi FOREIGN KEY (IdServicio) REFERENCES SERV_VIP(Id_Servicio)
)
----------------------------------------------------INSERT DE MEMBRESIA VIP ACCEDE A SERVICIOS--------------------------------------------------------------------------
INSERT INTO MEMBRESIA VALUES ('MEM-000001', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000007', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000011', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000013', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000015', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000018', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000022', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000024', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000025', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000028', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000030', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000032', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000035', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000038', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000040', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000042', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000043', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000047', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000048', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000050', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000051', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000054', '8');
INSERT INTO MEMBRESIA VALUES ('MEM-000056', '7');
INSERT INTO MEMBRESIA VALUES ('MEM-000058', '8');
----------------------------------------------------FIN INSERT DE MEMBRESIA VIP ACCEDE A SERVICIOS--------------------------------------------------------------------------


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
----------------------------------------------------INSERT DE MENSUALIDAD--------------------------------------------------------------------------
INSERT INTO CLIENTE VALUES ('MENS-00001','MEM-000001','08018255','08441271','03/12/2021');
INSERT INTO CLIENTE VALUES ('MENS-00002','MEM-000002','08017383','08501702','13/11/2022');
INSERT INTO CLIENTE VALUES ('MENS-00003','MEM-000003','95874412','08123063','25/02/2020');
INSERT INTO CLIENTE VALUES ('MENS-00004','MEM-000004','36051495','08953984','05/07/2022');
INSERT INTO CLIENTE VALUES ('MENS-00005','MEM-000005','08018255','08783155','05/06/2021');
INSERT INTO CLIENTE VALUES ('MENS-00006','MEM-000006','08018255','08796446','23/05/2021');
INSERT INTO CLIENTE VALUES ('MENS-00007','MEM-000007','95874412','08986507','12/02/2021');
INSERT INTO CLIENTE VALUES ('MENS-00008','MEM-000008','08017383','07421008','24/03/2021');
INSERT INTO CLIENTE VALUES ('MENS-00009','MEM-000009','36051495','08407631','11/12/2021');
INSERT INTO CLIENTE VALUES ('MENS-00010','MEM-000010','08017383','84942343','17/08/2021');
INSERT INTO CLIENTE VALUES ('MENS-00011','MEM-000011','08018255','96800123','10/12/2021');
INSERT INTO CLIENTE VALUES ('MENS-00012','MEM-000012','95874412','80246012','29/09/2021');
INSERT INTO CLIENTE VALUES ('MENS-00013','MEM-000013','36051495','08080051','20/11/2022');
INSERT INTO CLIENTE VALUES ('MENS-00014','MEM-000014','08017383','17970046','20/02/2020');
INSERT INTO CLIENTE VALUES ('MENS-00015','MEM-000015','95874412','08109568','13/12/2021');
INSERT INTO CLIENTE VALUES ('MENS-00016','MEM-000016','36051495','11310023','03/12/2021');
INSERT INTO CLIENTE VALUES ('MENS-00017','MEM-000017','36051495','01751042','07/12/2020');
INSERT INTO CLIENTE VALUES ('MENS-00018','MEM-000018','08017383','09498123','09/12/2020');
INSERT INTO CLIENTE VALUES ('MENS-00019','MEM-000019','95874412','36650123','13/12/2020');
INSERT INTO CLIENTE VALUES ('MENS-00020','MEM-000020','95874412','63540045','23/12/2022');
INSERT INTO CLIENTE VALUES ('MENS-00021','MEM-000021','95874412','60850067','20/02/2022');
INSERT INTO CLIENTE VALUES ('MENS-00022','MEM-000022','08017383','02335043','03/12/2021');
INSERT INTO CLIENTE VALUES ('MENS-00023','MEM-000023','08018255','02334013','04/04/2021');
INSERT INTO CLIENTE VALUES ('MENS-00024','MEM-000024','36051495','00622746','02/06/2021');
INSERT INTO CLIENTE VALUES ('MENS-00025','MEM-000025','36051495','08615032','03/09/2021');
INSERT INTO CLIENTE VALUES ('MENS-00026','MEM-000026','08017383','08364124','03/09/2021');
INSERT INTO CLIENTE VALUES ('MENS-00027','MEM-000027','08017383','08390732','05/09/2022');
INSERT INTO CLIENTE VALUES ('MENS-00028','MEM-000028','95874412','81140125','03/12/2022');
INSERT INTO CLIENTE VALUES ('MENS-00029','MEM-000029','08018255','68860356','17/06/2020');
INSERT INTO CLIENTE VALUES ('MENS-00030','MEM-000030','36051495','08154607','06/09/2020');
INSERT INTO CLIENTE VALUES ('MENS-00031','MEM-000031','36051495','06875454','12/12/2021');
INSERT INTO CLIENTE VALUES ('MENS-00032','MEM-000032','95874412','09138687','13/11/2020');
INSERT INTO CLIENTE VALUES ('MENS-00033','MEM-000033','95874412','09386567','14/10/2022');
INSERT INTO CLIENTE VALUES ('MENS-00034','MEM-000034','08018255','08547345','15/09/2021');
INSERT INTO CLIENTE VALUES ('MENS-00035','MEM-000035','36051495','07914234','16/04/2022');
INSERT INTO CLIENTE VALUES ('MENS-00036','MEM-000036','95874412','92430265','17/03/2022');
INSERT INTO CLIENTE VALUES ('MENS-00037','MEM-000037','36051495','06758765','18/03/2021');
INSERT INTO CLIENTE VALUES ('MENS-00038','MEM-000038','08017383','00190423','20/05/2020');
INSERT INTO CLIENTE VALUES ('MENS-00039','MEM-000039','95874412','06714576','28/06/2020');
INSERT INTO CLIENTE VALUES ('MENS-00040','MEM-000040','08018255','09229345','27/07/2020');
INSERT INTO CLIENTE VALUES ('MENS-00041','MEM-000041','08018255','21602355','25/03/2022');
INSERT INTO CLIENTE VALUES ('MENS-00042','MEM-000042','95874412','11350234','25/06/2021');
INSERT INTO CLIENTE VALUES ('MENS-00043','MEM-000043','08017383','84585576','27/06/2022');
INSERT INTO CLIENTE VALUES ('MENS-00044','MEM-000044','08017383','19130234','12/07/2022');
INSERT INTO CLIENTE VALUES ('MENS-00045','MEM-000045','08017383','88740175','01/02/2021');
INSERT INTO CLIENTE VALUES ('MENS-00046','MEM-000046','95874412','07179875','23/01/2022');
INSERT INTO CLIENTE VALUES ('MENS-00047','MEM-000047','36051495','04280543','12/01/2021');
INSERT INTO CLIENTE VALUES ('MENS-00048','MEM-000048','08018255','58176764','16/04/2020');
INSERT INTO CLIENTE VALUES ('MENS-00049','MEM-000049','08017383','94173453','15/06/2021');
INSERT INTO CLIENTE VALUES ('MENS-00050','MEM-000050','36051495','61662342','14/10/2020');
INSERT INTO CLIENTE VALUES ('MENS-00051','MEM-000051','95874412','74080432','19/11/2020');
INSERT INTO CLIENTE VALUES ('MENS-00052','MEM-000052','08018255','71944212','27/11/2021');
INSERT INTO CLIENTE VALUES ('MENS-00053','MEM-000053','36051495','44673421','21/12/2022');
INSERT INTO CLIENTE VALUES ('MENS-00054','MEM-000054','95874412','66594564','22/10/2022');
INSERT INTO CLIENTE VALUES ('MENS-00055','MEM-000055','08018255','87872342','26/10/2021');
INSERT INTO CLIENTE VALUES ('MENS-00056','MEM-000056','08018255','09360234','25/10/2021');
INSERT INTO CLIENTE VALUES ('MENS-00057','MEM-000057','08017383','86322342','04/06/2021');
INSERT INTO CLIENTE VALUES ('MENS-00058','MEM-000058','08017383','10780887','02/04/2021');
INSERT INTO CLIENTE VALUES ('MENS-00059','MEM-000059','08017383','77095654','05/05/2022');
INSERT INTO CLIENTE VALUES ('MENS-00060','MEM-000060','08018255','81980456','01/06/2020');
----------------------------------------------------FIN INSERT DE MENSUALIDAD--------------------------------------------------------------------------



--32)Creando la tabla OFRECE SERVICIO
CREATE TABLE OFRECE_SERVICIO
(
IdServicio     VARCHAR(10),
IdSucursal     VARCHAR(5),

CONSTRAINT PK_OFRECE PRIMARY KEY (IdServicio,IdSucursal),
CONSTRAINT FK_OfrServ FOREIGN KEY (IdServicio) REFERENCES SERVICIO(Id_Servicio),
CONSTRAINT FK_OfrSucu FOREIGN KEY (IdSucursal) REFERENCES SUCURSAL(Id_Sucursal)
)

----------------------------------------------------INSERT DE OFRECE_SERVICIO--------------------------------------------------------------------------
INSERT INTO OFRECE_SERVICIO VALUES('2','SUC01');
INSERT INTO OFRECE_SERVICIO VALUES('4','SUC02');
INSERT INTO OFRECE_SERVICIO VALUES('5','SUC01');
INSERT INTO OFRECE_SERVICIO VALUES('6','SUC02');
INSERT INTO OFRECE_SERVICIO VALUES('7','SUC01');
INSERT INTO OFRECE_SERVICIO VALUES('8','SUC02');
----------------------------------------------------FIN INSERT DE OFRECE_SERVICIO-----------------------------------------------------------------------

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

------------------Consultas ------------------------------------------------------------------------------------------------------

--¿Qué cantidad de ventas se ha realizado en efectivo y tarjeta?
SELECT Forma_de_Pago, COUNT(*) AS "Cantidad de ventas"
FROM FACTURA 
GROUP BY Forma_de_Pago;

--¿Cuál es el valor total de las ventas realizadas por efectivo y tarjeta?
SELECT Forma_de_Pago, SUM(Total) AS "Total"
FROM FACTURA
GROUP BY Forma_de_Pago;

--¿Cuáles son los productos más vendidos en la tienda del gimnasio?
SELECT DETALLE_FACTURA.CodigoPro,SUM(DETALLE_FACTURA.Cantidad) AS "Cantidad Total Vendida"
FROM DETALLE_FACTURA 
--INNER JOIN PRODUCTO
--ON DETALLE_FACTURA.CodigoPro = PRODUCTO.CodigoPro
GROUP BY DETALLE_FACTURA.CodigoPro
ORDER BY "Cantidad Total Vendida" DESC;


--¿Cuál es el nombre y caja asignada de cada recepcionista?
SELECT EMPLEADO.Nombre1,EMPLEADO.Nombre2, RECEPCIONISTA.Caja
FROM EMPLEADO
INNER JOIN RECEPCIONISTA
ON EMPLEADO.DNI = RECEPCIONISTA.DNI;
