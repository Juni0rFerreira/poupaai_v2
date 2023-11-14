import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poupaai_v2/common/widgets_global/app_header.dart';

class ProfilerPage extends StatefulWidget {
  const ProfilerPage({super.key});

  @override
  State<ProfilerPage> createState() => _ProfilerPageState();
}

class _ProfilerPageState extends State<ProfilerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Stack(
        children: [
          const AppHeader(title: 'Perfil'),
          const Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    minRadius: 60,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enjelin Morgeana',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'engelinmorgeana@email.com',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF438883),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          log('Alterar Nome clicado');
                        },
                        icon: const Icon(
                          Icons.person,
                          color: Color(0xFF2A7C76),
                        ),
                        label: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Alterar nome',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2A7C76)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          log('Alterar Senha clicado');
                        },
                        icon: const Icon(
                          Icons.lock_person,
                          color: Color(0xFF2A7C76),
                        ),
                        label: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Alterar senha',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2A7C76)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          log('Sair da conta clicado');
                        },
                        icon: const Icon(
                          Icons.logout_outlined,
                          color: Color(0xFF2A7C76),
                        ),
                        label: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sair da conta',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2A7C76)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
