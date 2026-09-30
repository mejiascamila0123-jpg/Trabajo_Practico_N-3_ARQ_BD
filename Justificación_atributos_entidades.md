# Justificación de Entidades y Atributos - Sistema de Biblioteca

## 1. Entidad: AUTOR
* **id_autor:** Identifica de forma única a cada autor.
* **nombre_autor:** Guarda el nombre del autor. Se pone en una tabla aparte para no repetir el nombre cada vez que escribe un libro.

---

## 2. Entidad: EDITORIAL
* **id_editorial:** Identificador único de la editorial.
* **nombre_editorial:** Nombre de la empresa que publica. Permite buscar los libros por editorial.

---

## 3. Entidad: TEMA
* **id_tema:** Identificador único de la categoría.
* **nombre_tema:** Nombre del tema o materia (ej. Programación, Redes). Sirve para ordenar y buscar los libros por tema.

---

## 4. Entidad: LIBRO
* **id_libro:** Identificador único del libro en el catálogo.
* **titulo:** Nombre del libro.
* **id_autor:** Conecta el libro con su autor.
* **id_editorial:** Conecta el libro con su editorial.
* **id_tema:** Conecta el libro con su tema.

*Justificación:* Guarda los datos generales del título sin importar cuántas copias físicas existan.

---

## 5. Entidad: EJEMPLAR
* **id_ejemplar:** Identificador único de cada copia física (código de inventario).
* **id_libro:** Indica a qué libro del catálogo pertenece esta copia.
* **estado:** Indica si el libro está 'bueno', 'deteriorado' o 'perdido'.

*Justificación:* Permite saber el estado de cada copia individual y encontrar los libros deteriorados o perdidos.

---

## 6. Entidad: SOCIO
* **id_socio:** Identificador único del alumno o usuario.
* **nombre y apellido:** Datos personales del socio.
* **dni:** Documento para identificar al socio y no repetirlo.
* **cuota_al_dia:** Guarda si el socio debe o no la cuota (Verdadero/Falso).

---

## 7. Entidad: PRESTAMO
* **id_prestamo:** Identificador único del préstamo.
* **id_socio:** Indica qué socio se llevó el libro.
* **id_ejemplar:** Indica qué copia física se entregó.
* **fecha_prestamo:** Día que se retiró el libro.
* **fecha_devolucion_esperada:** Día límite para devolverlo.
* **fecha_devolucion_real:** Día que se devolvió. Si está vacío (NULL), significa que el libro todavía no fue devuelto.
