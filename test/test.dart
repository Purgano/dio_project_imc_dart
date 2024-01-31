import 'package:dio_project_imc_dart/pessoa.dart';
import 'package:test/test.dart';

void main() {
  
  group('Teste Pessoa ', () {
    final pessoa = Pessoa(nome: 'Jonathas', peso: 100.0, altura: 1.60);
    
    test('Retorno correto do calculo de IMC', () {
      expect(
        pessoa.imc,
        greaterThanOrEqualTo(38),
      );
    });

    test('Retorno correto da classificação de IMC', () {
      expect(
        pessoa.getClassificaIMC(38),
        equals('Obesidade Grau II (severa)'),
      );
    });
  });
}