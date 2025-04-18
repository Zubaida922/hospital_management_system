import 'package:flutter/material.dart';

class DeletePatientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Patient'),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Delete Patient functionality will be here',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}