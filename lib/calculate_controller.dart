import 'dart:ffi';

import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  RxString inputExpression = "".obs;
  RxString output = "".obs;
  static const List<String> symbols = ["+", "-", "x", "÷", "."];

  evaluateExpressions() {
    String input =
        inputExpression.value.replaceAll("x", "*").replaceAll("÷", "/");
    Parser parser = Parser();
    Expression expression = parser.parse(input);
    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    var result =
        eval % 1 == 0 ? eval.round() : double.parse(eval.toStringAsFixed(2));
    output.value = result.toString();
    //update();
  }

  addChar(String char) {
    if (char == "=") {
      evaluateExpressions();
    } else {
      if (symbols.contains(char)) {
        validate(char);
      } else {
        inputExpression.value += char;
      }

      print(inputExpression);
      evaluateExpressions();
    }
    //update();
  }

  removeChar() {
    if (inputExpression.value.length > 1) {
      inputExpression.value =
          inputExpression.value.substring(0, inputExpression.value.length - 1);
      evaluateExpressions();
      //update();
    } else {
      clearExpression();
    }
  }

  clearExpression() {
    inputExpression.value = "";
    output.value = "";
    //update();
  }

  validate(String char) {
    if (char == "-" &&
        (inputExpression.endsWith("÷") || inputExpression.endsWith("x"))) {
      inputExpression.value += char;
    } else if (symbols.contains(
        inputExpression.value.substring(inputExpression.value.length - 1))) {
      inputExpression.value = inputExpression.value.replaceRange(
          inputExpression.value.length - 1, inputExpression.value.length, char);
    } else {
      inputExpression.value += char;
    }
  }
}
