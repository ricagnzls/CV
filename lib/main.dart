import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'skills.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 182, 120, 194),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculum Vitae',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 33, 33, 34),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/rica.jpg',
                ),
                radius: 80.0,
              ),
            ),
            const Divider(height: 90, color: Colors.white),
            const Text(
              "Name:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Text(
              "Rica Gin Gonzales",
              style: TextStyle(
                  color: Color.fromARGB(255, 51, 51, 51),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            const Text(
              "Position:",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Text(
              "Web Developer",
              style: TextStyle(
                  color: Color.fromARGB(255, 53, 53, 53),
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.mail, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "ricagonzales@gmail.com",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            const Row(
              children: [
                Icon(Icons.call, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "09812902136",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            const Divider(height: 90, color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PersonalInfoScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.info, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const EducationalBackgroundScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.school, color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SkillsScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.settings, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
