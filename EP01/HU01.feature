Feature: HU01: Como usuario quiero buscar trabajadores que cumplan con mis peticiones
Scenario: E01: Usuario visualiza trabajadores disponibles
        TA01:
        Given el usuario quiere buscar trabajadores 
        When ingresa a la sección de buscar
        Then visualiza una lista de los trabajadores disponibles
        Examples:
            | Nombre del gerente| Boton Buscar | Resultado                                    |
            | Branco Venegas    | clic()       | Visualizar lista de trabajadores disponibles |
Scenario: E02: Usuario selecciona la opción de filtrado
        TA01:
        Given el usuario quiere ver los trabajadores que cumplan ciertos requisitos 
        When selecciona la opción de filtrar
        Then visualiza un menú con las distintas opciones de filtrado
        Examples:
            | Catalogo de trabajadores            | Boton "Filtrar ya" | Resultado                                         |
            | Visualizar trabajadores disponibles | clic()             | Visualizar una hoja para ingresar datos del chofer|
Scenario: E03: Usuario visualiza trabajadores filtrados
        TA01:
        Given las opciones de fltrado son “Años de experiencia”, “Departamento “, “Ciudad “, “Edad”, “Sexo”, “Grado de estudios” los cuales son requeridos
        Y el usuario coloca la cantidad de años de de experiencia en el campo “Años de experiencia”
        Y el usuario selecciona el departamento que desee en el submenú “Departamento”
        Y el usuario selecciona la ciudad que desee en el submenú “Ciudad”
        Y el usuario coloca la cantidad de años que debe tener el chofer en el campo “Edad”
        Y selecciona el tipo de licencia que desee en el submenú “Sexo”
        Y el usuario seleccione el grado de estudios que desee en el submenú “Grado de estudios” 
        When el usuario selecciona el botón “Filtrar ya” en la parte inferior céntrica del menú “Filtrar”
        Then visualiza la lista de trabajadores que cumplan sus requerimientos
        Examples: 
            | Opciones de filtrado              | Buscar trabajadores | Resultado                                                               |
            | Rellenar los campos para filtrar  | clic()              | Visualizar lista de trabajadores disponibles de acuerdo con el filtrado |