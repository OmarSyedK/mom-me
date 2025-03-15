import 'package:flutter/material.dart';

class ConsultDoctorScreen extends StatefulWidget {
  const ConsultDoctorScreen({super.key});

  @override
  _ConsultDoctorScreenState createState() => _ConsultDoctorScreenState();
}

class _ConsultDoctorScreenState extends State<ConsultDoctorScreen> {
  final _formKey = GlobalKey<FormState>();
  final _concernController = TextEditingController();

  @override
  void dispose() {
    _concernController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Process the form data (e.g., send it to a server)
      String concern = _concernController.text;
      print('Concern submitted: $concern');
      // Optionally, show a success message or navigate to another screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consult a Doctor'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _concernController,
                decoration: InputDecoration(
                  labelText: 'Enter your concern',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your concern';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}