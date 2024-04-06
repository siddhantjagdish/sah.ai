import 'package:flutter/material.dart';
import 'dummy_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Overview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UnitOverviewScreen(),
    );
  }
}

class UnitOverviewScreen extends StatelessWidget {
  final List<String> lessons = [
    'Structure of a Compiler, Group...',
    'Role of a Lexical Analyzer',
    'Input Buffering',
    'Role of a Lexical Analyzer',
    'Input Buffering',
    'Role of a Lexical Analyzer',
    'Input Buffering',
    'Role of a Lexical Analyzer',
    'Input Buffering',
  ];

  final List<String> durations = [
    '04:28 min',
    '06:12 min',
    '43:58 min',
    '06:12 min',
    '43:58 min',
    '06:12 min',
    '43:58 min',
    '06:12 min',
    '43:58 min',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/123.png', // Path to your image asset
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(height: 10), // Add space between image and heading
            Container(
              color: Colors.black.withOpacity(0.6),
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                ' Unit Overview',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10), // Add space between heading and Lessons
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start, // Align start
                children: [
                  Text(
                    'Lessons',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      width: 27), // Add space between Lessons and Description
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blue, // Add blue line under Lessons
              height: 2,
              margin: EdgeInsets.only(right: 270), // Add margin to align left
            ),

            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(), // Use BouncingScrollPhysics
                  itemCount: lessons.length,
                  itemBuilder: (context, index) {
                    return LessonListTile(
                      lessonName: lessons[index],
                      duration: durations[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LessonListTile extends StatelessWidget {
  final String lessonName;
  final String duration;

  LessonListTile({
    required this.lessonName,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/images/1234.png'),
      title: Text(
        lessonName,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        duration,
        style: TextStyle(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DummyPage()),
        );
      },
    );
  }
}
