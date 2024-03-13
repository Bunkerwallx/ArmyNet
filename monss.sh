#!/bin/bash

# Solicitar al usuario el nombre del proyecto
read -p "Ingrese el nombre del proyecto: " PROJECT_NAME

# Crear la carpeta del proyecto
mkdir "$PROJECT_NAME"
echo "Carpeta del proyecto '$PROJECT_NAME' creada"

# Cambiar al directorio del proyecto
cd "$PROJECT_NAME" || exit

# Crear la carpeta de includes
mkdir include
echo "Carpeta 'include' creada"

# Crear la carpeta de código fuente
mkdir src
echo "Carpeta 'src' creada"

# Crear la carpeta de pruebas
mkdir tests
echo "Carpeta 'tests' creada"

# Crear la carpeta de binarios
mkdir bin
echo "Carpeta 'bin' creada"

# Crear el archivo Makefile
touch Makefile
echo "Archivo 'Makefile' creado"

# Crear el archivo README.md
touch README.md
echo "Archivo 'README.md' creado"

# Crear los archivos de encabezado
touch include/modulo1.h include/modulo2.h
echo "Archivos de encabezado creados"

# Crear los archivos de código fuente
touch src/modulo1.c src/modulo2.c
echo "Archivos de código fuente creados"

# Crear los archivos de pruebas
touch tests/test_modulo1.c tests/test_modulo2.c
echo "Archivos de pruebas creados"

# Crear el archivo ejecutable
touch bin/ejecutable
echo "Archivo ejecutable creado"

case 

echo "¡Estructura de proyecto '$PROJECT_NAME' en perl creada exitosamente!"
