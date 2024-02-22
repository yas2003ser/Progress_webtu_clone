import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:progress/provider/nav_bar_provider.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentIndex = ref.watch(navBarProvider);
    return Container(
      color: const Color.fromARGB(255, 209, 207, 207),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: FloatingNavbar(
          selectedItemColor: Colors.white,
          elevation: 5,
          selectedBackgroundColor: const Color.fromARGB(255, 22, 163, 76),
          backgroundColor: const Color.fromARGB(255, 34, 33, 51),
          padding: const EdgeInsets.only(bottom: 8),
          margin: const EdgeInsets.all(0),
          onTap: ref.read(navBarProvider.notifier).selectPage,
          currentIndex: currentIndex,
          items: [
            FloatingNavbarItem(
              icon: Icons.home_outlined,
              title: 'Home',
            ),
            FloatingNavbarItem(
              icon: Icons.payment_outlined,
              title: 'cards',
            ),
            FloatingNavbarItem(
              icon: Icons.newspaper_outlined,
              title: 'news',
            ),
            FloatingNavbarItem(
              icon: Icons.person_outline,
              title: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
