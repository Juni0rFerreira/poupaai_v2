import 'package:flutter/material.dart';
import 'package:poupaai_v2/common/widgets_global/password_formfield_custom.dart';
import 'package:poupaai_v2/common/widgets_global/primary_button_custom.dart';
import 'package:poupaai_v2/common/widgets_global/text_custom.dart';
import 'package:poupaai_v2/common/widgets_global/input_formfield_custom.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 32),
          const Text(
            'Economize\nO Seu dinheiro!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: Color(0xFF00A9FF),
            ),
          ),
          const SizedBox(height: 32),
          Image.asset('assets/img/createaccount.png'),
          const Form(
            child: Column(
              children: [
                TextFormFieldCustom(
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.words,
                  labelText: 'Nome',
                  hintText: 'John Silva',
                ),
                TextFormFieldCustom(
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'E-mail',
                  hintText: 'email@email.com',
                ),
                PasswordFormFieldCustom(
                  labelText: 'Senha',
                  hintText: 'Abcd@123456',
                ),
                PasswordFormFieldCustom(
                  labelText: 'Confirme Sua Senha',
                  hintText: '***********',
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const PrimaryButtonCustom(text: 'Cadastrar'),
          const SizedBox(
            height: 15,
          ),
          const TextCustom(textOne: 'Já Tem Uma Conta?', textTwo: ' Entrar'),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
