import 'package:flutter/material.dart';

class ViewPatientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Patients'),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'List of Patients will be shown here',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}