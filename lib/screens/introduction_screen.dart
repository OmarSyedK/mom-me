import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
        backgroundColor: const Color.fromRGBO(241, 191, 220, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(241, 191, 220, 1), // Light Pink Background
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Image.asset(
                  'images/IMG-20250315-WA0004[1].jpg',
                  width: 300,
                  height: 300,
                  fit: BoxFit.contain,
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Mom&Me Wellness',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto', // Or any other preferred font
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'New moms face a life-altering experience in caring for their newborn, involving practicalities, emotional rollercoaster, and questions about breastfeeding, sleep routines, diaper changes, and soothing techniques. Trust your instincts, give yourself grace, and cherish precious moments with your child. Seek guidance and support when needed, as you are not alone on this journey.',
              style: TextStyle(fontSize: 16, fontFamily: 'Roboto'), // Or any other preferred font
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
