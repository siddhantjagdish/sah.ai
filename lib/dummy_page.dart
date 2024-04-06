import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 100, // Adjust the width as needed
                height: 150, // Adjust the height as needed
                child: Image.asset(
                  'assets/images/padh.ai.png', // Path to your first image asset
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity, // Stretch the width
                height: 250, // Adjust the height as needed
                child: Image.asset(
                  'assets/images/12345.png', // Path to your second image asset
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
