import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:collection/collection.dart';
import 'package:projetoteste/aula08/classes/login_details.dart';
import 'package:projetoteste/aula08/widgets/login_text_field.dart';
import 'package:projetoteste/aula08/widgets/tipo_login.dart';
import 'package:projetoteste/aula09/aula09.dart';

class Aula08 extends StatefulWidget {
  const Aula08({super.key});

  @override
  State<Aula08> createState() => _Aula08State();
}

class _Aula08State extends State<Aula08> {
  bool _senhaEscondida = true;

  late final TextEditingController _userController;
  late final TextEditingController _senhaController;
  List<bool> _selectList = [true, false, false];
  TiposDeLogin tipoLogin = TiposDeLogin.email;
  var _memorizar = false;

  @override
  void initState() {
    _userController = TextEditingController();
    _senhaController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _alterarTipoLogin(int idx) {
    setState(() {
      tipoLogin = TiposDeLogin.values[idx];
      _selectList = _selectList.mapIndexed((pos, val) => pos == idx).toList();
    });
  }

  void _alterarVisibilidade() {
    setState(() {
      _senhaEscondida = !_senhaEscondida;
    });
  }

  void _testarCampos() {
    debugPrint('Usuario: ${_userController.text}');
    debugPrint('Senha: ${_senhaController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.75),
              Image(
                  width: 150, image: AssetImage('assets/images/logoifsp.jpg')),
              const SizedBox(
                width: 7,
              ),
              TipoLogin(
                  selectedList: _selectList,
                  alterarTipoLogin: _alterarTipoLogin),
              LoginTextField(tipoLogin: tipoLogin, controller: _userController),
              SizedBox(height: 16),
              TextField(
                controller: _senhaController,
                obscureText: _senhaEscondida,
                decoration: InputDecoration(
                    label: const Text('Senha'),
                    hintText: 'Senha',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: _alterarVisibilidade,
                      icon: Icon(_senhaEscondida
                          ? Icons.visibility_off
                          : Icons.visibility),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Memorizar dados'),
                  const SizedBox(
                    width: 8,
                  ),
                  Switch(
                      value: _memorizar,
                      onChanged: (value) {
                        setState(() {
                          _memorizar = value;
                        });
                      })
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 0.75, 30)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/aula09',
                        arguments: {'nome': 'Nana'});
                  },
                  child: const Text('Login'))
            ],
          ),
        ),
      ),
    ));
  }
}
