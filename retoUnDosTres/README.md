# Pre-requisitos

* Java 1.8 o superior
* Maven 3.8.1 o superior

-------

# Documentación

### Casos automatizados

| Features | Escenarios                                                      |
| -------- | ----------------------------------------------------------------|
| login    | Login successful, Login unsuccessful                            |
| register | Register successful, Register unsuccessful                      |
| resources| List resource                                                   |
| users    | List users, Create user, Update user - put, Update user - patch |

-------

# Guía de usuario

* ### Ejecución del proyecto:

1. En la Terminal, acceder a la carpeta raíz del proyecto.
2. Ejecutar el comando: `mvn test -Dtest=RetoTest -Dkarate.env=dev`

**Nota:** Para cambiar el ambiente donde se ejecutarán las pruebas se debe modificar el valor del parámetro `Dkarate.env`. Valores permitidos: `dev, qa`.

En caso se requiera ejecutar los feature de forma individual, se deben utilizar los tags en el comando. Valores permitidos: `login, register, resources, users`.

*Ejemplo:*

`mvn test "-Dkarate.options=--tags @users" -Dtest=RetoTest -Dkarate.env=dev`

-------

# Reportes

### Reporte de Cucumber

Se podrá revisar el resultado de las pruebas ejecutadas en el reporte de Cucumber abriendo desde un navegador web el archivo `overview-features.html` que se encuentra en la carpeta `target\cucumber-html-reports`.

![overview-features.html](https://github.com/hramosr/Resources/blob/main/reporte-cucumber-1.png "overview-features.html")

*  En la página principal se podrá visualizar un resumen del estado de los pasos, escenarios y features ejecutados.

![Reporte Cucumber](https://github.com/hramosr/Resources/blob/main/reporte-cucumber-2.png "Reporte Cucumber")

* Al ingresar al enlace del feature se podrá visualizar el detalle de los pasos ejecutados en cada escenario.

![Detalle del reporte Cucumber](https://github.com/hramosr/Resources/blob/main/reporte-cucumber-3.png "Detalle del reporte Cucumber")

### Reporte de Karate

Se podrá revisar el resultado de las pruebas ejecutadas en el reporte de Karate abriendo desde un navegador web el archivo `karate-summary.html` que se encuentra en la carpeta `target\karate-reports`.

![karate-summary.html](https://github.com/hramosr/Resources/blob/main/reporte-karate-1.png "karate-summary.html")

*  En la página principal se podrán visualizar los features y los escenarios ejecutados.

![Reporte Karate](https://github.com/hramosr/Resources/blob/main/reporte-karate-2.png "Reporte Karate")

* Al ingresar al enlace del feature se podrá visualizar el detalle de los pasos ejecutados en cada escenario.

![Detalle del reporte Karate](https://github.com/hramosr/Resources/blob/main/reporte-karate-3.png "Detalle del reporte Karate")