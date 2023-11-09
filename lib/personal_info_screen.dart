import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Information"),
      ),
      body: Container(
        color: const Color.fromARGB(
            255, 182, 120, 194), // Set the background color to black
        padding: const EdgeInsets.all(220), // Add padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add your personal information here as Text widgets in a Column
            _buildInfoText("Name: Rica Gin P Gonzales"),
            _buildInfoText("Age: 21 years old"),
            _buildInfoText("Address: Banaoang. Calasiao, Pangasinan"),
            _buildInfoText("Place of Birth: Calasiao, Pangasinan"),
            _buildInfoText("Citizenship: Filipino"),
            _buildInfoText("Religion: Roman Catholic"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
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
