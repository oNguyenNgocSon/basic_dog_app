import 'package:flutter/material.dart';

import 'dog_model.dart';

class AddDogFormPage extends StatefulWidget {
  @override
  _AddDogFormPageState createState() => _AddDogFormPageState();
}

class _AddDogFormPageState extends State<AddDogFormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new Dog'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: nameController,
                  onChanged: (v) => nameController.text = v,
                  decoration: InputDecoration(
                      labelText: 'Name the Pup'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                    controller: locationController,
                    onChanged: (v) => locationController.text = v,
                    decoration: InputDecoration(
                      labelText: "Pup's location",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: descriptionController,
                  onChanged: (v) => descriptionController.text = v,
                  decoration: InputDecoration(
                      labelText: 'All about the pup'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Builder(builder: (context) {
                  return RaisedButton(
                    onPressed: () => print('PRESSED'),
                    color: Colors.indigoAccent,
                    child: Text("Add pup"),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
