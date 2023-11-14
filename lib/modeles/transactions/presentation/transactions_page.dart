import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poupaai_v2/common/widgets_global/input_formfield_custom.dart';
import 'package:poupaai_v2/common/widgets_global/primary_button_custom.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF429690),
                    Color(0xFF2A7C76),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(500, 30),
                  bottomRight: Radius.elliptical(500, 30),
                ),
              ),
              height: 287,
            ),
          ),
          const Positioned(
            left: 24.0,
            right: 24.0,
            top: 94.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Adicionar Transação',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 174,
            left: 28,
            right: 28,
            bottom: 90,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                    blurRadius: 8.0, 
                    spreadRadius: 0.05, 
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Form(
                  child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 56, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {log('Renda Clicada');},
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24.0),
                                ),
                              ),
                              child: const Text(
                                'Renda',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF666666),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {log('Despesa Clicada');},
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(24.0),
                                ),
                              ),
                              child: const Text(
                                'Despesa',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF666666),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const TextFormFieldCustom(
                      hintText: 'R\$ 100.00',
                      labelText: 'Quantia',
                      keyboardType: TextInputType.number,
                    ),
                    const TextFormFieldCustom(
                      hintText: 'Add descrição',
                      labelText: 'Descrição',
                    ),
                    const TextFormFieldCustom(
                      hintText: 'Selecione a categoria',
                      labelText: 'Categoria',
                    ),
                    const TextFormFieldCustom(
                      hintText: 'Terça, 22 de Janeiro de 2023',
                      labelText: 'Data',
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    const PrimaryButtonCustom(text: 'Adicionar'),
                  ],
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
