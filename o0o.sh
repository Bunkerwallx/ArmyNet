#!/bin/bash

# Solicitar al usuario el nombre del proyecto
read -p "Ingrese el nombre del proyecto: " PROJECT_NAME
mkdir "$PROJECT_NAME" && cd "$PROJECT_NAME" || exit

# Lógica para seleccionar el lenguaje y crear la estructura de proyecto correspondiente
case "$1" in
    perl)
        # Crear la carpeta de Perl
        mkdir perl
        cd perl || exit
        echo "Carpeta de Perl creada"

        # Crear el archivo principal de Perl
        touch main.pl
        echo "Archivo 'main.pl' creado"

        echo "¡Estructura de proyecto 'perl/$PROJECT_NAME' creada exitosamente!"
        ;;
    python)
        # Crear la carpeta de Python
        mkdir python
        cd python || exit
        echo "Carpeta de Python creada"

        # Crear el archivo principal de Python
        touch main.py
        echo "Archivo 'main.py' creado"

        echo "¡Estructura de proyecto 'python/$PROJECT_NAME' creada exitosamente!"
        ;;
    c)
        # Crear la carpeta de C
        mkdir c
        cd c || exit
        echo "Carpeta de C creada"

        # Crear los archivos de código fuente y encabezado
        touch main.c
        echo "Archivo 'main.c' creado"
        mkdir include src tests bin
        touch include/modulo1.h include/modulo2.h
        touch src/modulo1.c src/modulo2.c
        touch tests/test_modulo1.c tests/test_modulo2.c
        touch bin/ejecutable
        touch Makefile README.md

        echo "¡Estructura de proyecto 'c/$PROJECT_NAME' creada exitosamente!"
        ;;
    ruby)
        # Crear la carpeta de Ruby
        mkdir ruby
        cd ruby || exit
        echo "Carpeta de Ruby creada"

        # Crear el archivo principal de Ruby
        touch main.rb
        echo "Archivo 'main.rb' creado"

        echo "¡Estructura de proyecto 'ruby/$PROJECT_NAME' creada exitosamente!"
        ;;
    *)
        echo "Uso: $0 {perl|python|c|ruby}"
        exit 1
        ;;
esac
