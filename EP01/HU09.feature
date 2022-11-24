Feature: HU09: Como usuario quiero visualizar el perfil de cada trabajador para conocer la experiencia en su carrera de conductor profesional
Scenario: E01: Ingreso al perfil del trabajador
        TA01:
        Given se encuentra en el inicio de la app 
        When ingresa a la sección de catálogos de trabajadores
        Then observa una lista de trabajadores desempleados
        Examples:
            | Nombre del usuario| Boton Buscar trabajadores | Resultado                                       |
            | Branco Venegas    | clic()                    | Visualizar lista de trabajadores disponibles    |
        TA02:
        Given ingresa a la sección de catálogos
        When no se muestra la sección de catálogos de trabajadores
        Then la app le muestra un mensaje que dice que no hay ningún trabajador desempleado
        Examples:
            | Nombre del usuario | Boton Buscar trabajadores | Resultado                                         |
            | Irazzu Ruzza       | clic()                    | visualiza un sms="No hay trabajadores disponibles"|
        TA03:
        Given ingresa a la sección de catálogos
        When no se muestra la sección de catálogos de trabajadores
        Then  la app le muestra un mensaje que informa que la app está en una actualización
        Examples:
            | Inicio de sesión     | Boton Buscar trabajadores | Resultado                                      |
            | Dominik Mendoza      | clic()                    | visualiza un sms="La app esta en actualización"|
            