import 'package:flutter/material.dart';

class UpdatePatientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Patient'),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Update Patient form will be here',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}