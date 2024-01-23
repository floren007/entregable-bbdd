-- Ejercicio 1:
--  Crear mediante instrucciones SQL las entidades de acuerdo con el modelo relacional definido

Create Database segunda_parte;
USE segunda_parte;
CREATE TABLE departamento (
    codDepto VARCHAR(4) PRIMARY KEY,
    nombreDpto VARCHAR(20),
    Ciudad VARCHAR(15),
    codDirector VARCHAR(12)
);

CREATE TABLE empleado (
    nIDemp VARCHAR(12) PRIMARY KEY,
    nomEmp VARCHAR(30),
    sexEmp CHAR(1),
    fecNa DATE,
    fecIncorporacion DATE,
    salEmp FLOAT,
    comisionE FLOAT,
    cargoE VARCHAR(15),
    jefeID VARCHAR(12),
    codDepto VARCHAR(4) REFERENCES departamento(codDepto)
);
-- Ejercicio 2:
--  Insertar datos en cada una de las tablas, al menos 40 empleados y 10 departamentos
-- He insertado los empleados a traves de un script en python, tambien se lo enviare para que pueda verlo

INSERT INTO departamento (codDepto, nombreDpto, Ciudad, codDirector) VALUES
('3000', 'VENTAS', 'Jaen', 'DIR001'),
('2000', 'INVESTIGACIÓN', 'Almeria', 'DIR002'),
('3001', 'MANTENIMIENTO', 'Granada', 'DIR001'),
('2002', 'IT', 'Zaragoza', 'DIR003'),
('3003', 'Data Engineer', 'Huelva', 'DIR001'),
('2004', 'Data Scienctist', 'Cordoba', 'DIR002'),
('3004', 'Data Analytics', 'Sevilla', 'DIR001'),
('2005', 'Cloud', 'Malaga', 'DIR001'),
('3006', 'Dev Ops', 'Cadiz', 'DIR001'),
('2007', 'BI', 'Barcelona', 'DIR001'),
('2008', 'Infraestructura', 'Oviedo', 'DIR001');

# 4a empleados, lo he echo random conj un script en python
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('0','Juan','M','2024-01-23','2016-03-13', 40624.555694949515 , 48238.97869430736 ,'Secretario','31.840.2693','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('1','Maria','F','2024-01-23','2016-03-13', 22097.03332890665 , 83797.1966905183 ,'Jueza','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('2','Maria','F','2024-01-23','2016-03-13', 85712.67267897118 , 45306.0675211279 ,'Jueza','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('3','Maria','F','2024-01-23','2016-03-13', 92894.58935513798 , 34388.63824206666 ,'Jueza','31.8401.369','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('4','Juan','M','2024-01-23','2016-03-13', 62059.296563320015 , 77586.95112606767 ,'Juez','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('5','Juan','M','2024-01-23','2016-03-13', 74069.55130397412 , 96357.38440580532 ,'vendedor','31.8401.369','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('6','Maria','F','2024-01-23','2016-03-13', 74056.25929266364 , 98557.7990380284 ,'vendedor','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('7','Maria','F','2024-01-23','2016-03-13', 78106.23291466555 , 96671.29298978373 ,'Secretaria','31.840.269','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('8','Juan','M','2024-01-23','2016-03-13', 5582.926029252971 , 41873.0002517416 ,'Secretario','31.840.2693','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('9','Maria','F','2024-01-23','2016-03-13', 42503.111965459706 , 8179.670234666414 ,'Jueza','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('10','Juan','M','2024-01-23','2016-03-13', 44813.14645780297 , 94398.61307095426 ,'vendedor','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('11','Juan','M','2024-01-23','2016-03-13', 22643.62529702555 , 1161.8711174042785 ,'vendedor','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('12','Maria','F','2024-01-23','2016-03-13', 12369.186969463455 , 58506.661727572275 ,'Secretaria','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('13','Juan','M','2024-01-23','2016-03-13', 50304.388670075205 , 6725.635373952366 ,'vendedor','31.840.2693','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('14','Juan','M','2024-01-23','2016-03-13', 66914.72921571597 , 49908.505888572676 ,'Juez','31.840.2693','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('15','Juan','M','2024-01-23','2016-03-13', 59328.16100137864 , 25509.57433897214 ,'vendedor','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('16','Juan','M','2024-01-23','2016-03-13', 39831.60827286754 , 40127.72413676433 ,'Secretario','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('17','Juan','M','2024-01-23','2016-03-13', 47322.96795617244 , 28388.876204202985 ,'Juez','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('18','Juan','M','2024-01-23','2016-03-13', 52129.38502763486 , 91873.09116858468 ,'vendedor','31.840.269','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('19','Juan','M','2024-01-23','2016-03-13', 57579.36416848666 , 21501.5634899813 ,'Secretario','31.840.269','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('20','Maria','F','2024-01-23','2016-03-13', 18638.322149117328 , 72367.6826809365 ,'Jueza','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('21','Juan','M','2024-01-23','2016-03-13', 19319.626830710135 , 8931.252280551527 ,'Secretario','31.840.2693','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('22','Juan','M','2024-01-23','2016-03-13', 65784.86356600032 , 84167.2304345585 ,'Juez','31.840.269','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('23','Maria','F','2024-01-23','2016-03-13', 59136.93532677096 , 66791.396610081 ,'Secretaria','31.8401.369','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('24','Juan','M','2024-01-23','2016-03-13', 2516.5498086784287 , 65629.0194909173 ,'vendedor','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('25','Maria','F','2024-01-23','2016-03-13', 32091.29584213135 , 80309.30936856092 ,'Jueza','31.840.2693','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('26','Maria','F','2024-01-23','2016-03-13', 69447.49651969553 , 95904.50377983035 ,'Jueza','31.840.2693','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('27','Juan','M','2024-01-23','2016-03-13', 43831.01673149592 , 74350.78633059571 ,'vendedor','31.840.2693','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('28','Maria','F','2024-01-23','2016-03-13', 66380.25046878227 , 70341.25084713058 ,'Secretaria','31.8401.369','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('29','Juan','M','2024-01-23','2016-03-13', 94248.70889484776 , 97842.85103494018 ,'Secretario','31.8401.369','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('30','Maria','F','2024-01-23','2016-03-13', 21283.923406760518 , 10261.904069114713 ,'vendedor','31.8401.369','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('31','Juan','M','2024-01-23','2016-03-13', 40736.22538117766 , 71763.06172403676 ,'Juez','31.840.2693','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('32','Maria','F','2024-01-23','2016-03-13', 43327.29823204556 , 76301.62254648832 ,'Jueza','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('33','Maria','F','2024-01-23','2016-03-13', 24464.880446762087 , 17907.644993958937 ,'Jueza','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('34','Juan','M','2024-01-23','2016-03-13', 64749.31531389432 , 68353.38049538514 ,'Secretario','31.840.2693','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('35','Juan','M','2024-01-23','2016-03-13', 3438.6903986867687 , 7272.347338333673 ,'Secretario','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('36','Maria','F','2024-01-23','2016-03-13', 2067.864558128219 , 72493.412001586 ,'vendedor','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('37','Maria','F','2024-01-23','2016-03-13', 22132.380842623243 , 63891.40584405778 ,'Jueza','31.840.269','2000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('38','Maria','F','2024-01-23','2016-03-13', 38631.217241942606 , 99737.5968345195 ,'Secretaria','31.840.269','3000');
INSERT INTO segunda_parte.empleado (nIDemp, nomEmp, sexEmp, fecNa, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) VALUES ('39','Juan','M','2024-01-23','2016-03-13', 61059.4135893864 , 34140.497941100366 ,'Secretario','31.8401.369','2000');

-- Ejercicio 3:
--  Obtener los datos completos de los empleados.

SELECT * FROM empleado;

-- Ejercicio 4:
--  Obtener los datos completos de los departamentos.

SELECT * FROM departamento;

-- Ejercicio 5:
--  Obtener los datos de los empleados con cargo 'Secretaria’ / ‘Secretario’

SELECT * FROM empleado WHERE cargoE = 'Secretaria' OR cargoE = 'Secretario';

-- Ejercicio 6:
--  Obtener el nombre y salario de los empleados.
SELECT nomEmp, salEmp FROM empleado;

-- Ejercicio 7:
-- Obtener los datos de los vendedores, ordenado por nombre
SELECT * FROM empleado WHERE cargoE = 'Vendedor' ORDER BY nomEmp;

-- Ejercicio 8:
-- Listar el nombre de los departamentos, ordenado por nombre y ciudad en orden ascendente,descendente
SELECT nombreDpto FROM departamento ORDER BY nombreDpto ASC, Ciudad DESC;

-- Ejercicio 9:
--  Obtener el nombre y cargo de los empleados, ordenado por cargo y salario
SELECT nomEmp, cargoE FROM empleado ORDER BY cargoE, salEmp;

-- Ejercicio 10:
-- Listar el nombre del departamento cuya suma de salarios sea la más alta
SELECT dep.nombreDpto
FROM departamento dep 
JOIN empleado emp 
ON dep.codDepto = emp.codDepto
GROUP BY dep.nombreDpto
ORDER BY SUM(emp.salEmp) DESC
LIMIT 1;

-- Ejercicio 11:  
-- Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión.
SELECT salEmp, comisionE from empleado WHERE codDepto = '2000' ORDER BY comisionE;

-- Ejercicio 12: 
-- Listar todas las comisiones que sean diferentes, ordenada por valor.
SELECT distinct(comisionE) FROM empleado ORDER BY comisionE; 

-- Ejercicio 13:  
-- Listar los diferentes salarios.
SELECT distinct(salEmp) FROM empleado;

-- Ejercicio 14:  
-- Obtener el valor total a pagar que resulta de sumar a los empleados del departamento ‘3000’ una 
-- bonificación de 5.000€, en orden alfabético del empleado
SELECT SUM(salEmp)+5000 as TotalPagar FROM empleado WHERE codDepto = '3000' ORDER BY nomEmp;

-- Ejercicio 15:
-- Obtener la lista de los empleados que ganan una comisión superior a su sueldo
SELECT * FROM empleado WHERE comisionE > salEmp;

-- Ejercicio 16:
 -- Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo

SELECT * FROM empleado WHERE comisionE <= 0.3 * salEmp;

-- Ejercicio 17: 
-- Listar los empleados cuyo salario es menor o igual que el 40% de su comisión.
SELECT * FROM empleado WHERE salEmp <= 0.4 * comisionE;

-- Ejercicio 18: 
-- Listar el salario, la comisión, el salario total (salario + comisión), documento de identidad del
-- empleado y nombre, de aquellos empleados que tienen comisión superior a 10.000 €, ordenar el
-- informe por el número del documento de identidad
SELECT salEmp, comisionE, (salEmp+comisionE) AS salarioTotal, nIDemp, nomEmp FROM empleado WHERE comisionE > 10000 ORDER BY nIDemp;

-- Ejercicio 19:
--  Hallar el nombre de los empleados que tienen un salario superior a 50.000 €, y tienen como jefe al
-- empleado con documento de identidad '31.840.269’.
SELECT nomEmp 
FROM empleado 
WHERE salEmp > 50000 AND jefeID = '31.840.269';

-- Ejercicio 20:
-- Obtener los nombres de los departamentos que no sean 'VENTAS', 'INVESTIGACIÓN', ni
-- 'MANTENIMIENTO', ordenados por ciudad
SELECT nombreDpto 
FROM departamento 
WHERE nombreDpto NOT IN ('VENTAS', 'INVESTIGACIÓN', 'MANTENIMIENTO') 
ORDER BY Ciudad;

-- Ejercicio 21:
-- Listar los datos de los empleados cuyo nombre inicia por la letra 'M', su salario es mayor a 40.000 o
-- reciben comisión y trabajan para el departamento de 'VENTAS’
SELECT emp.nIDemp,emp.nomEmp,emp.salEmp,emp.sexEmp,emp.fecNa,emp.fecIncorporacion,emp.comisionE,emp.cargoE,emp.jefeID,emp.codDepto FROM empleado emp
INNER JOIN departamento dep
ON emp.codDepto = dep.codDepto
WHERE emp.nomEmp LIKE 'M%' AND (salEmp > 40000 OR comisionE > 0) AND dep.nombreDpto ='VENTAS';

-- Ejercicio 22:
-- Obtener nombre, salario y comisión de los empleados que reciben un salario situado entre la mitad de la comisión la propia comisión:
SELECT nomEmp, salEmp, comisionE 
FROM empleado 
WHERE salEmp BETWEEN (0.5 * comisionE) AND comisionE;

-- Ejercicio 23:
-- Entregar el salario más alto de la empresa.
SELECT MAX(salEmp) FROM empleado;

-- Ejercicio 24:
--  Entregar el total a pagar por comisiones, y el número de empleados que las reciben.
SELECT SUM(comisionE), COUNT(*) FROM empleado WHERE comisionE > 0;

-- Ejercicio 25:
-- Hallar el salario más alto, el más bajo y la diferencia entre ellos.
SELECT MAX(salEmp) as SalarioMasAlto, MIN(salEmp) as SalarioMasBajo, (MAX(salEmp)-MIN(salEmp)) as Diferencia FROM empleado;

-- Ejercicio 26:
-- Entregar el número de empleados de sexo femenino y de sexo masculino, por departamento
SELECT sexEmp,codDepto,COUNT(*) AS NumEmpleados FROM empleado GROUP BY codDepto, sexEmp;

-- Ejercicio 27
-- Hallar el salario promedio por departamento.
SELECT codDepto, AVG(salEmp) as SalarioPromedio FROM empleado group by codDepto;

-- Ejercicio 28
--  Entregar un reporte con el número de cargos en cada departamento y cual es el promedio de salario
-- de cada uno. Indicar el nombre del departamento en el resultado.
SELECT dep.nombreDpto, emp.cargoE, COUNT(*) AS NumCargos, AVG(emp.salEmp) AS SalarioPromedio
FROM empleado emp 
JOIN departamento dep ON emp.codDepto = dep.codDepto 
GROUP BY dep.nombreDpto, emp.cargoE;

-- Ejercicio 29
--  Calcular el total de salarios por departamento.
SELECT dep.nombreDpto, SUM(emp.salEMp) as TotalSalario 
FROM empleado emp
INNER JOIN departamento dep
ON emp.codDepto = dep.codDepto
GROUP BY dep.codDepto;

-- Ejercicio 30
--  Hallar la suma de salarios más alta, crear para ello una vista
CREATE VIEW SumaSalarios AS 
SELECT codDepto, SUM(salEmp) AS SumSalarios
FROM empleado 
GROUP BY codDepto;

SELECT * 
FROM SumaSalarios 
ORDER BY SumSalarios DESC 
LIMIT 1;