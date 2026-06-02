# Contador de Racha de TikTok con mi Novia en Flutter


Este proyecto es una aplicación móvil interactiva desarrollada en Flutter para la asignatura Programación III. Consiste en un contador personalizado y divertido diseñado para llevar el registro de rachas de días en TikTok, aplicando los conceptos fundamentales de la programación móvil.


## Conceptos Fundamentales Aplicados


Siguiendo las pautas y el material de apoyo de la materia, el proyecto implementa:

* **StatefulWidget (`HomeScreen`):** Utilizado para la pantalla principal del contador, permitiendo redibujar la interfaz en tiempo real mediante el uso de `setState()` al sumar, restar o reiniciar la racha.
* **StatelessWidget (`InfoScreen`):** Empleado para la pantalla de información del desarrollador, donde se muestran datos estáticos que no requieren mutación de estado.
* **Manejo de Contexto (`BuildContext`):** Crucial para el rastreo de los widgets dentro del árbol del sistema y la gestión de temas globales.
* **Navegación por Rutas Nombradas (Named Routes):** Centralizado en un enrutador independiente (`app_router.dart`) para garantizar un código limpio, escalable y estructurado según las buenas prácticas (KISS).
* **Diseño Personalizado:** Uso extensivo de componentes de `Material 3`, paleta de colores personalizada (`Colors.teal`) y botones flotantes (`FloatingActionButton`).


## Estructura del Proyecto (`lib/`)


lib/
├── config/
│   └── router/
│       └── app_router.dart  # Centralización de rutas de la app
├── screens/
│   ├── home_screen.dart     # Pantalla del contador de racha
│   └── info_screen.dart     # Pantalla con datos del alumno
└── main.dart                # Punto de entrada de la aplicación


## Datos del desarrollador


Institución: Universidad de Margarita (UNIMAR)
Profesor: Ing. Hector Luna
Estudiante: Anyer David Villarroel Ramos
Asignatura: Programación III
Año: 2026