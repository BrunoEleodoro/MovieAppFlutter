import 'package:validators/validators.dart';
import 'package:validators/sanitizers.dart';

class ValidationUtils {
  validate(value, type) {
    if (value == "") {
      return "Preencha este campo";
    }

    if (type == "email") {
      if (!isEmail(value)) {
        return "Email não é válido";
      }
    }

  }
}
