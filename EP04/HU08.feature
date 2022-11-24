Feature: Como usuario quiero visualizar las calificaciones de los trabajadores registrados.
    Scenario: E01: Calificacion acumulativa de los trabajadores
        TA01

        Given se encuentra en el “perfil de un trabajadores profesional”
        And quiere saber la calificacion de los trabajadores
        When seleccione ver “Calificacion de trabajador”
        Then se muestra la calificacion de cada trabajador seleccionado

        Examples:
            | Nombre del chofer       | Calificacion  | Resultado                           |
            | Gleider Castro Ataucusi | 4.5/5         | El puntaje se despliega en pantalla |