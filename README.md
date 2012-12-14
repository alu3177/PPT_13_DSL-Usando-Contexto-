# ULL::ETSII::Alu3177::Quiz

# Práctica 13: DSL: Redacción de Cuestionarios II (Usando Contexto)
# `Práctica finalizada`
## Enunciado
Se trata de escribir un programa que redacte cuestionarios. En principio, sólo soportaremos preguntas del tipo selección múltiple:

    1 - ¿En que año Cristóbal Colón descubrió América?
        1. 1942
        2. 1492
        3. 1808
        4. 1914
        Su respuesta:

Debe definir una clase __Quiz__ que soporte un pequeño lenguaje en el que las preguntas puedan ser especificadas. El constructor de __Quiz__ va seguido de un bloque, en el que mediante el DSL se especifican las preguntas y respuestas.

    quiz = Quiz.new("Cuestionario de PFS 10/12/2011"){
        question ’¿En que añoo Cristóbal Colón descubrió América?’,
            wrong =>’1942’,
            right =>’1492’,
            wrong =>’1808’,
            wrong =>’1914’

        a = rand(10)
        b = rand(10)

        question "#{a}+#{b} = ",
            wrong =>"44",
            wrong =>"#{a + b + 2}",
            right =>"#{a + b}",
            wrong =>"#{a + b - 2}"
    }
    quiz.run
    
## Exportación HTML
Mediante el método `to_html` de la clase _Quiz_ crea un directorio llamado 'html' y en su interior se construye un fichero con el test. Se incluyen además los ficheros de estilo e implementación JavaScript.

La página construída representa cada pregunta y sus posibles respuestas y además permite evaluar si son correctas o no (mostrando individualmente el resultado de cada respuesta) mediante el uso de javascript.

## Objetivos
- Escriba un método `to_html` que genere una página describiendo el examen. `Use ERB`
- Opcionalmente puede incluir hojas de estilo, javascript, etc. en el HTML  generado
- Use TDD con RSpec
- Use Unit Testing
- Use Continuous Integration (Travis)
- Use Continuous Testing (Guard)
- Documente su gema véase `RDOC::Markup o RDOC o YARD`
- Cree una gema `ull-etsii-aluXX-quiz`
- Publique la gema en RubyGems.org
- Indique la URL de su repositorio en GitHub y la URL en RubyGems.org

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
