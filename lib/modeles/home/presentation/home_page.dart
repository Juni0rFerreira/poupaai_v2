import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    Color(0xFF89CFF3),
                    Color(0xFF00A9FF),
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
          Positioned(
            left: 24.0,
            right: 24.0,
            top: 74.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Afternoon,',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Enjelin Morgeana',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                    color: Colors.white.withOpacity(0.06),
                  ),
                  child: Stack(
                    alignment: const AlignmentDirectional(0.5, -0.5),
                    children: [
                      const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 24,
            left: 24,
            top: 155,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: const BoxDecoration(
                color: Color(0xFF1B5C58),
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            'R\$1.556,00',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          log('options');
                        },
                        child: PopupMenuButton(
                          padding: EdgeInsets.zero,
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              height: 24,
                              child: Text('item 1'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 36),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.06),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Income',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Text(
                                'R\$ 1.840,00',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.06),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expenses',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Text(
                                'R\$ 284,00',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 377,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Historico de Transação',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Text(
                        'Ver Tudo',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final color = index % 2 == 0 ? Colors.green : Colors.red;
                      final value =
                          index % 2 == 0 ? "+ \$ 100.00" : "- \$ 100.00";
                      return ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                        leading: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: const Icon(Icons.monetization_on_outlined),
                        ),
                        title: const Text(
                          'UpWork',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: const Text(
                          '20/07/1969',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                        trailing: Text(
                          value,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600).apply(color: color),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
