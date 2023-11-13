import 'package:flutter/material.dart';
import 'package:poupaai_v2/common/widgets_global/password_formfield_custom.dart';
import 'package:poupaai_v2/common/widgets_global/primary_button_custom.dart';
import 'package:poupaai_v2/common/widgets_global/text_custom.dart';
import 'package:poupaai_v2/common/widgets_global/input_formfield_custom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            child: Text(
              'Bem Vindo de Volta!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: Color(0xFF00A9FF),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Image.asset('assets/img/login.png'),
          const SizedBox(
            height: 32,
          ),
          const Form(
            child: Column(
              children: [
                TextFormFieldCustom(
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'E-mail',
                  hintText: 'moses@email.com',
                ),
                PasswordFormFieldCustom(
                  labelText: 'Senha',
                  hintText: '***********',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const PrimaryButtonCustom(text: 'Login'),
          const SizedBox(
            height: 15,
          ),
          const TextCustom(textOne: 'Não Tem Uma Conta?', textTwo: ' Cadastrar')
        ],
      ),
    );
  }
}
