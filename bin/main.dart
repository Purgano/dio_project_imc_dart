
//import 'package:dio_project_imc_dart/pessoa.dart' as dio_project_imc_dart;

import 'package:dio_project_imc_dart/pessoa.dart';
import 'dart:io';


void main() {

  stdout.write('Digite o seu nome: ');
  final nome = stdin.readLineSync()!;
  double peso;
  while (true) {
    stdout.write('Digite seu peso em kg: ');
    final weightInput = stdin.readLineSync();
    try {
      peso = double.parse(weightInput!);
      break; // Sai do loop 
    } catch (e) {
      print('Atenção! Insira um peso valido');
    }
  }

  double altura;
  while (true) {
    stdout.write('Digite sua altura em metros: ');
    final heightInput = stdin.readLineSync();
    try {
      altura = double.parse(heightInput!);
      break; // Sai do loop 
    } catch (e) {
      print('Atenção! Insira uma altura valido.');
    }
  }
    final pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
   
   double imc = pessoa.imc;
    String classificaIMC = pessoa.getClassificaIMC(imc);

    print('Resultados do IMC do ${pessoa.nome}:');
    print('Peso: ${pessoa.peso} kg');
    print('Altura: ${pessoa.altura} m');
    print('IMC: $imc');
    print('Classificação atual: $classificaIMC');
    
}