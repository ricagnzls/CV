import 'package:flutter/material.dart';

class EducationalBackgroundScreen extends StatelessWidget {
  const EducationalBackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Educational Background"),
      ),
      body: Container(
        color: const Color.fromARGB(
            255, 182, 120, 194), // Set the background color to black
        padding: const EdgeInsets.all(20), // Add padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add your educational background information here as Text widgets in a Column
            _buildInfoText("Tertiary Education:"),
            const Divider(height: 20, color: Colors.white),
            _buildInfoText("Bachelor of Science in Information Technology"),
            _buildInfoText(
                "The Philippine College of Science and Technology (PhilCST)"),
            _buildInfoText("Graduation Year: 2024"),
            const SizedBox(height: 20), // Add some spacing between sections
            _buildInfoText("Secondary Education:"),
            const Divider(height: 20, color: Colors.white),
            _buildInfoText("Dagupan City National High School"),
            _buildInfoText("Graduation Year: 2020"),
            const SizedBox(height: 20), // Add some spacing between sections
            _buildInfoText("Primary Education:"),
            const Divider(height: 20, color: Colors.white),
            _buildInfoText("Banaoang Elementary School"),
            _buildInfoText("Graduation Year: 2014"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black, // Set the text color to yellow
          fontSize: 16, // Set the font size
          fontWeight: FontWeight.bold, // Set the font weight to bold
          fontStyle: FontStyle.italic, // Set the font style to italic
        ),
      ),
    );
  }
}
