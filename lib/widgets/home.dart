import 'package:flutter/material.dart';
import 'package:progress/widgets/card_categories.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final categorie = [
      {
        "title": "Profile",
        "icon": Icons.person,
      },
      {
        "title": "Courses",
        "icon": Icons.book,
      },
      {
        "title": "Exams",
        "icon": Icons.school,
      },
      {
        "title": "Results",
        "icon": Icons.bar_chart,
      },
      {
        "title": "Payments",
        "icon": Icons.payment,
      },
      {
        "title": "gdfgdf",
        "icon": Icons.abc,
      },
      {
        "title": "qd",
        "icon": Icons.face,
      },
      {
        "title": "Courses",
        "icon": Icons.book,
      },
      {
        "title": "Exams",
        "icon": Icons.school,
      },
      {
        "title": "Results",
        "icon": Icons.bar_chart,
      },
      {
        "title": "Payments",
        "icon": Icons.payment,
      },
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 80),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Student Portal",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Image.asset("assets/coverture.jpg"),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 80,
              crossAxisCount: 2,
              childAspectRatio: 2.6,
            ),
            itemCount: categorie.length,
            itemBuilder: (BuildContext context, int index) {
              return CardCategories(
                  icon: Icon(categorie[index]["icon"] as IconData?),
                  title: categorie[index]["title"] as String);
            },
          ),
        ],
      ),
    );
  }
}
