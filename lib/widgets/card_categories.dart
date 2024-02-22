import 'package:flutter/material.dart';

class CardCategories extends StatelessWidget {
  const CardCategories({super.key, required this.icon, required this.title});
  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: SizedBox(
        width: 200,
        height: 80,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 22, 163, 76),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                title,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
