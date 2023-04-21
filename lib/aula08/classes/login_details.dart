import 'package:flutter/material.dart';

enum TiposDeLogin { email, cpf, telefone }

class LoginDetails {
  late String label;
  late String hintText;
  late Icon prefixIcon;

  LoginDetails({
    required this.label,
    required this.hintText,
    required this.prefixIcon,
  });

  static Map<TiposDeLogin, LoginDetails> loginDetails() {
    return {
      TiposDeLogin.email: LoginDetails(
        label: 'E-mail',
        hintText: 'usuario@mail.com',
        prefixIcon: Icon(Icons.mail),
      ),
      TiposDeLogin.cpf: LoginDetails(
        label: 'CPF',
        hintText: '777.777.777-7',
        prefixIcon: Icon(Icons.credit_card),
      ),
      TiposDeLogin.telefone: LoginDetails(
        label: 'Telefone',
        hintText: '(77) 77777-7777',
        prefixIcon: Icon(Icons.phone),
      )
    };
  }
}
