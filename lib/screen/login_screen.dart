import 'package:flutter/material.dart';
import 'package:progress/screen/home_screnn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    Color iconColor = Colors.black;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 126, 126, 126),
                Color.fromARGB(255, 209, 207, 207),
              ],
            ),
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 100),
                Image.asset("assets/logo.png"),
                const SizedBox(height: 50),
                const Text(
                  "Progiciel de Gestion Integre",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 102, 102, 102),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Portail etudiant",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 102, 102, 102),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Veuillez entrer votre matricule";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Entrer votre matricule",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 102, 102, 102),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      filled: true,
                      prefixIcon: Icon(Icons.person, color: iconColor),
                      fillColor: const Color.fromARGB(255, 209, 207, 207),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Veuillez entrer votre mot de passe";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Entre votre mot de passe",
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 102, 102, 102),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      filled: true,
                      prefixIcon: Icon(Icons.key, color: iconColor),
                      fillColor: const Color.fromARGB(255, 209, 207, 207),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 43, 126, 46),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    "Se connecter",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 80),
                const Text(
                    "Ministere de l'Enseignement Superieur et de la Recherche Scientifique",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 102, 102, 102),
                    ),
                    textAlign: TextAlign.center),
                const Text("copyright 2022",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 102, 102, 102),
                    ),
                    textAlign: TextAlign.center)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
