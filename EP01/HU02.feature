Feature: HU02: Como trabajador quiero cambiar mi estado a disponible para que los usuarios me tomen en cuenta al momento de buscar trabajadores
Scenario: E01: Selección de opción “Cambiar estado”
        TA01:
        Given el usuario quiere cambiar su estado actual 
        When ingresa en el botón “estado” 
        Then aparece la opción “Cambiar estado”
        Examples:
            | Nombre del trabajador| Boton estado de trabajador | Resultado                                  |
            | Juan Gonzales        | clic()                     | Visualizar el estado actual del trabajador |
Scenario: E02: Cambiar al estado laboral “Disponible”
        TA01:
        Given el usuario está en el menú de “Cambiar estado” 
        When el usuario selecciona la opción “Disponible” 
        Then aparece la opción “Cambiar estado”
        Examples:
            | Nombre del trabajador | Boton  actualizar estado   | Resultado                                                                          |
            | Juan Gonzales         | clic()                     | Se muestra una pantalla con la confirmación de la actualización del estado laboral |