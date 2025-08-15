import 'package:flutter/material.dart';
import 'package:input_validation/src/features/input/domain/validator.dart';

class InputValidationScreen extends StatefulWidget {
  const InputValidationScreen({super.key});

  @override
  State<InputValidationScreen> createState() => _InputValidationScreenState();
}

class _InputValidationScreenState extends State<InputValidationScreen> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final validator = Validator();
  final _formKey = GlobalKey<FormState>();

  // validator ...
  void _submit() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Formular ist gültig!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Formular ist ungültig"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tutorium 2: Input Validation")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          autovalidateMode: AutovalidateMode.disabled,
          key: _formKey,
          child: Column(
            spacing: 21,
            children: [
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input",
                ),
                controller: _textController1,
                validator: validator.validateEmail,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input",
                ),
                controller: _textController2,
                validator: validator.validateAge,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input",
                ),
                controller: _textController3,
                validator: validator.validatePassword,
              ),
              FilledButton(onPressed: _submit, child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
