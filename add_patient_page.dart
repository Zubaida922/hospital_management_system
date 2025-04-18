class AddPatientPage extends StatefulWidget {
  @override
  _AddPatientPageState createState() => _AddPatientPageState();
}

class _AddPatientPageState extends State<AddPatientPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _diseaseController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Add your database insertion logic here
      String name = _nameController.text;
      String age = _ageController.text;
      String disease = _diseaseController.text;

      // Just showing a message for now
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Patient $name added')),
      );

      // Clear form
      _nameController.clear();
      _ageController.clear();
      _diseaseController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Patient')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Patient Name'),
                validator: (value) => value!.isEmpty ? 'Enter name' : null,
              ),
              TextFormField(
                controller: _ageController,      
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Enter age' : null,
              ),
              TextFormField(
                controller: _diseaseController,
                decoration: InputDecoration(labelText: 'Disease'),
                validator: (value) => value!.isEmpty ? 'Enter disease' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
} 