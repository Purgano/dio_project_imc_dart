
import 'dart:math' as math;

class Pessoa {
  final String nome;
  final double peso;
  final double altura;

Pessoa({required this.nome, required this.peso, required this.altura});


double get imc {
    var resulto = peso / math.pow(altura, 2);
    resulto = resulto * 100;
    return resulto.roundToDouble() / 100;
  }

String getClassificaIMC(double imc) {
    if (imc < 16) return "Magreza Grave";
    if (imc >= 16 && imc < 17) return "Magreza Moderada";
    if (imc >= 17 && imc < 18.5) return "Magreza Leve";
    if (imc >= 18.5 && imc < 25) return "Saudável";
    if (imc >= 25 && imc < 30) return "Sobrepeso";
    if (imc >= 30 && imc < 35) return "Obesidade Grau I";
    if (imc >= 35 && imc < 40) return "Obesidade Grau II (severa)";
    return "Obesidade Grau III (mórbida)";
  }


}
