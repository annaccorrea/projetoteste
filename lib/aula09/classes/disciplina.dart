class Disciplina {
  late final String codigo;
  late final String nome;
  late final String professor;

  Disciplina(
      {required this.codigo, required this.nome, required this.professor});

  static List<Disciplina> gerarDisciplinas() {
    return [
      Disciplina(codigo: 'PDME', nome: 'Prog p Disp Mov', professor: 'Dourado')
    ];
  }
}
