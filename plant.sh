


create_c_project() {
    mkdir -p proyecto_c/{include,src,tests,bin}
    touch proyecto_c/{Makefile,README.md}
    touch proyecto_c/include/modulo1.h proyecto_c/include/modulo2.h
    touch proyecto_c/src/modulo1.c proyecto_c/src/modulo2.c
    touch proyecto_c/tests/test_modulo1.c proyecto_c/tests/test_modulo2.c
    touch proyecto_c/bin/ejecutable
}

create_python_project() {
    mkdir -p proyecto_python
    touch proyecto_python/main.py
}

create_perl_project() {
    mkdir -p proyecto_perl
    touch proyecto_perl/main.pl
}

create_ruby_project() {
    mkdir -p proyecto_ruby
    touch proyecto_ruby/main.rb
}

create_r_project() {
    mkdir -p proyecto_r
    touch proyecto_r/main.R
}

create_bash_project() {
    mkdir -p proyecto_bash
    touch proyecto_bash/main.sh
}

# Crear proyectos para cada lenguaje
create_c_project
create_python_project
create_perl_project
create_ruby_project
create_r_project
create_bash_project

echo "¡Proyectos creados exitosamente!"
