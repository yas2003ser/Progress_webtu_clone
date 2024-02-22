import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:progress/provider/nav_bar_provider.dart';
import 'package:progress/screen/card_screen.dart';
import 'package:progress/screen/profile_screen.dart';
import 'package:progress/widgets/bottm_nav_bar.dart';

import 'package:progress/widgets/home.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentIndex = ref.watch(navBarProvider);

    Widget activeScreen = const Home();
    if (currentIndex == 0) {
      activeScreen = const Home();
    }
    if (currentIndex == 1) {
      activeScreen = const CardScreen();
    }

    if (currentIndex == 2) {
      activeScreen = const Center(
        child: Text("News"),
      );
    }
    if (currentIndex == 3) {
      activeScreen = const ProfileScreen();
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 209, 207, 207),
        bottomNavigationBar: const BottomNavBar(),
        body: Scaffold(
          body: activeScreen,
        ));
  }
}
