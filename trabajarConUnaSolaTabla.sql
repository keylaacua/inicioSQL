-- USAMOS SELECT PARA SELECCIONAR COLUMNAS
USE datos;
SELECT clave_producto, Fecha, venta, venta * 1.16 AS venta_iva
FROM ventas

-- USAMOS WHERE PARA FILTRAR DENTRO DE LAS COLUMNAS
SELECT *
FROM ventas
WHERE clave_producto IN ("PZZ", "BRR", "QSD")
-- WHERE clave_producto = "pzz" OR clave_producto = "brr" OR clave_producto ="qsd"
 
-- USO DEL WHERE Y BETWEEN
USE datos;
SELECT *
FROM ventas
WHERE venta BETWEEN 1000 AND 3000
-- WHERE venta >= 1000 AND venta <= 2000 

-- USO DEL LIKE
USE datos;
SELECT * 
FROM ventas
-- CUANDO TENGO CARACTERES ANTES DE LA Z USO % ANTES
-- WHERE clave_producto LIKE "%Z"
WHERE clave_producto LIKE "__Z"

-- EXPRESION REGULAR REGEXP(EN LUGAR DE USAR LIKE "%EZ%")
SELECT * 
FROM empleadps
-- QUE EMPIEZE CON LO USAMOS WHERE Apellido REGEXP "^LO" 
-- QUE TERMINE CON EZ USAMOS WHERE Apellido REGEXP "EZ$" 
-- NECESITO QUE TENGA EZ Y/O IZ USAMOS  WHERE Apellido REGEXP "EZ|IZ"
-- -- NECESITO QUE TENGA EZ Y/O IZ Y (QUE SOLO PUEDA TERMINAR EN ZA)U SAMOS  WHERE Apellido REGEXP "EZ|IZ|ZA%"  
WHERE Apellido REGEXP "EZ|IZ|ZA$" 

--USO DEL ORDER BY
SELECT *
FROM empleadps
ORDER BY apellido DESC

-- IS NULL NOS SIRVE PARA BUSCAR REGISTROS QUE NO TIENEN DATOS
SELECT * 
FROM empleadps
--WHERE Domicilio IS NOT NULL
WHERE Domicilio IS NULL

-- USO DEL LIMIT
SELECT *
FROM ventas
-- para q nos traiga a partir del registro 5 hasta el 9 LIMIT 5,9
LIMIT 5,9