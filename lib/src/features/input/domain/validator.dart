class Validator {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Bitte E-Mail eingeben';
    }
    if (!value.contains('@') || !value.endsWith('.de')) {
      return 'Ungültige E-Mail-Adresse';
    }
    return null;
  }

  String? validatePassword(String? value) {
    return null;
  }

  String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return "Bitte Alter eingeben";
    }

    int age = int.tryParse(value)!;

    if (age <= 16) {
      return "No registration allowed";
    }
    return null;
  }
}
