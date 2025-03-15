import 'package:flutter/material.dart';

class ConsultDoctorScreen extends StatelessWidget {
  const ConsultDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consult a Doctor'),
      ),
      body: Center(
        child: Text(
          'Coming Soon!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}