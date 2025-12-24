import 'package:flutter/material.dart';
import '../features/auto_detector_text/widgets/auto_text_detector.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Detector Text')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AutoTextDetector(
          text:
          'Website https://flutter.dev | Email test@gmail.com | Call +919876543210',

          urlStyle: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),

          emailStyle: const TextStyle(
            color: Colors.deepPurple,
            fontStyle: FontStyle.italic,
          ),

          phoneStyle: const TextStyle(
            color: Colors.red,
            decoration: TextDecoration.none,
          ),
        )

      ),
    );
  }
}
