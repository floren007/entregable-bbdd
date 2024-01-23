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
SELECT salEmp, comisionE, (salEmp+comisionE) AS salarioTotal, nIDemp, nomEmp FROM empleado where comisionE > 10000 ORDER BY nIDemp;

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