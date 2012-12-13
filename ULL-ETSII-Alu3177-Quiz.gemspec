# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ULL-ETSII-Alu3177-Quiz/version"

Gem::Specification.new do |s|
  s.name        = "ULL-ETSII-Alu3177-Quiz"
  s.version     = ULL::ETSII::Alu3177::Quiz::VERSION
  s.authors     = ["Fernando González López-Peñalver"]
  s.email       = ["alu0100256543@ull.edu.es"]
  s.homepage    = ""
  s.summary     = %q{Práctica: DSL: Redacción de Cuestionarios II (Usando Contexto)}
  s.description = %q{Generador de custionarios. Permite crear custionarios mediante un DSL simple. Además se podrán ejecutar estos cuestionarios via consola o generar un documento html encargado de mostrar y corregir los tests.}

  s.rubyforge_project = "ULL-ETSII-Alu3177-Quiz"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rdoc"
  s.add_runtime_dependency "colorize"
end
