import 'dart:developer';

class Validator {
  String? validateEmail(value) {
    // ist null oder leer
    if (value == null || value.isEmpty) {
      return "Bitte Email eingeben";
    }
    // hat @ und einen Punkt (.)

    if (!value.contains("@") && !value.contains(".")) {
      return "Bitte gültige E-Mail eingeben";
    }
    // keine Leerzeichen

    if (value.contains(" ")) {
      return "Bitte keine Leerzeichen verwenden";
    }

    return null;
  }

  String? validateAge(value) {
    if (value == null || value.isEmpty) {
      return "Bitte Alter eingeben";
    }

    final age = int.tryParse(value);

    if (age == null) {
      return "Es muss eine Zahl sein";
    }

    if (age < 0) {
      return "Muss eine positive Zahl sein";
    }

    if (age < 16) {
      return "Das Mindestalter ist 16";
    }
    // ist eine Zahl && ist eine positive Zahl
    // Mindestalter: 16

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Bitte Passwort eingeben";
    }

    if (value.length < 6) {
      return "Gebe mindestens 6 Zeichen ein";
    }
    // 6 Zeichen,
    //
    // davon 2 kleinbuchstaben
    // REGEX!!!
    final regex = RegExp(
      r'^(?=(?:.*[a-z]){2,})(?=.*[!@#\$%^&*(),.?":{}|<>]).+$',
    );

    if (!regex.hasMatch(value)) {
      return "Das Password muss mindestens 2 Kleinbuchstaben und mindestens 1 Sonderzeichen enthalten";
    }

    // 1 sonderzeichen

    return null;
  }
}
