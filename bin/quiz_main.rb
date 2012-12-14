#encoding: UTF-8
require "ULL-ETSII-Alu3177-Quiz"
include ULL::ETSII::Alu3177::Quiz

quiz = Quiz.new("Lenguajes y Paradigmas de Programación: Temas 1 y 2") {
    question "¿Cómo se pueden ver los valores de una configuración git?",
        right => "git config -l",
        wrong => "git list config",
        wrong => "git config -a",
        wrong => "git config ls"
    question "¿Cómo se crea un repositorio git?",
        wrong => "git initialize",
        wrong => "git start",
        right => "git init",
        wrong => "git new"
    question "¿Cómo se añaden cambios para que estén bajo el control de git?",
        wrong => "git update filename",
        wrong => "git include filename",
        right => "git add filename",
        wrong => "git require filename"
    question "¿Cómo se ve el estado de mis ficheros con respecto al repositorio?",
        wrong => "git list",
        wrong => "git file status",
        wrong => "git diff",
        right => "git status"
    question "¿Es correcto escribir subguiones en un número (por ejemplo: 1_000_000)?",
        right => "Sí",
        wrong => "No"
    question "¿Qué opción hay que pasarle a git commit para especificar el mensaje de log y evitar que abra el editor?",
        wrong => "-n",
        wrong => "-n \"Texto\"",
        wrong => "-m",
        right => "-m \"Texto\""
    question "¿Qué opción hay que pasarle a git commit para que añada todos los cambios efectuados en ficheros rastreados (tracked)?",
        right => "-a",
        wrong => "-c",
        wrong => "-h",
        wrong => "-p"
    question "Qué indica el prefijo/sufijo? $",
        right => "Variable global",
        wrong => "Variable de clase",
        wrong => "Variable de instancia"
    question "Qué indica el prefijo/sufijo? @",
        wrong => "Variable global",
        wrong => "Variable de clase",
        right => "Variable de instancia"
    question "Qué indica el prefijo/sufijo? @@",
        wrong => "Variable global",
        right => "Variable de clase",
        wrong => "Variable de instancia"
}

quiz.to_html
