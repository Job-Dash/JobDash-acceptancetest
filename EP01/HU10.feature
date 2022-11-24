Feature: HU10: Como usuario quiero visualizar el perfil de cada trabajador para conocer la experiencia en su carrera de conductor profesional
Scenario: E01: Observar lista de trabajadores desempleados
        TA01:
        Given se encuentra en el inicio de la app 
        When ingresa a la sección de catálogos de trabajadores
        Then observa una lista de trabajadores desempleados
        Examples:
            | Inicio sesión     | Buscar trabajadores | Resultado                                       |
            | Branco Venegas    | clic()          | Visualizar lista de trabajadores disponibles        |
        TA02:
        Given está en la sección de catálogos
        When ingresa al perfil de un trabajador
        Then la app le muestra la información correspondiente del perfil
        Examples:
            | Buscar trabajadores | Boton ver perfil | Resultado                                       |
            | clic()          | clic()           | Visualizar el perfil del trabajador seleccionado    |