import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projetoteste/aula09/classes/disciplina.dart';

class Aula09Disciplinas extends StatefulWidget {
  const Aula09Disciplinas({super.key});

  @override
  State<Aula09Disciplinas> createState() => _Aula09DisciplinasState();
}

class _Aula09DisciplinasState extends State<Aula09Disciplinas> {
  @override
  Widget build(BuildContext context) {
    final List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();
    return ListView.builder(
        itemCount: disciplinas.length,
        itemBuilder: (context, index) => ListTile(
              leading: Text(disciplinas[index].codigo),
              title: Text(disciplinas[index].nome),
              subtitle: Text(disciplinas[index].professor),
            ));
  }
}
