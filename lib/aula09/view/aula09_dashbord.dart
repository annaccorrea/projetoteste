import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Aula09Dashboard extends StatefulWidget {
  const Aula09Dashboard({super.key});

  @override
  State<Aula09Dashboard> createState() => _Aula09DashboardState();
}

class _Aula09DashboardState extends State<Aula09Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dashboard Widget'),
    );
  }
}
