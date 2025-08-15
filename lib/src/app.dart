import 'package:flutter/material.dart';
import 'package:input_validation/src/features/input/presentation/input_validation_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: InputValidationScreen());
  }
}
