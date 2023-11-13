import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poupaai_v2/modeles/home/presentation/home_page.dart';
import 'package:poupaai_v2/modeles/homeview/presentation/widgets/custom_bottomappbar.dart';
import 'package:poupaai_v2/modeles/profile/presentation/profiler_page.dart';
import 'package:poupaai_v2/modeles/stats/presentation/stats_page.dart';
import 'package:poupaai_v2/modeles/wallet/presentation/wallet_page.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({super.key});

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      log(pageController.page.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          StatsPage(),
          WalletPage(),
          ProfilerPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF00A9FF),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(
        selectedItemColor: const Color(0xFF00A9FF),
        children: [
          CustomBottomAppBarItem(
            label: 'home',
            primaryIcon: Icons.home,
            secondaryIcon: Icons.home_outlined,
            onPressed: () => pageController.jumpToPage(
              0,
            ),
          ),
          CustomBottomAppBarItem(
            label: 'stats',
            primaryIcon: Icons.analytics,
            secondaryIcon: Icons.analytics_outlined,
            onPressed: () => pageController.jumpToPage(
              1,
            ),
          ),
          CustomBottomAppBarItem.empty(),
          CustomBottomAppBarItem(
            label: 'wallet',
            primaryIcon: Icons.wallet,
            secondaryIcon: Icons.wallet_outlined,
            onPressed: () => pageController.jumpToPage(
              2,
            ),
          ),
          
          CustomBottomAppBarItem(
            label: 'profile',
            primaryIcon: Icons.person,
            secondaryIcon: Icons.person_outline,
            onPressed: () => pageController.jumpToPage(
              3,
            ),
          ),
        ],
      ),
    );
  }
}