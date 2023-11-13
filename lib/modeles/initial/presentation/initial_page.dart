import 'package:flutter/material.dart';
import 'package:poupaai_v2/common/widgets_global/primary_button_custom.dart';
import 'package:poupaai_v2/common/widgets_global/text_custom.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: const Color(0xFFCDF5FD),
                child: Image.asset('assets/img/initial.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: Text(
                      'Gaste De Forma Mais Inteligente Economize Mais',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF00A9FF),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.5,
                  ),
                  PrimaryButtonCustom(
                    text: 'Iniciar',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextCustom(
                    textOne: 'Já Tem Uma Conta?',
                    textTwo: ' Entrar',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
