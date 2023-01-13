import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  RxString inputExpression = "".obs;
  RxString output = "".obs;

  evaluteExpration() {
    String input =
        inputExpression.value.replaceAll("x", "*").replaceAll("÷", "/");
    Parser parser = Parser();
    Expression expression = parser.parse(input);
    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    output.value = eval.toString();
    update();
  }

  addChar(String char) {
    inputExpression.value += char;
    print(inputExpression);
    evaluteExpration();
    update();
  }

  removeChar() {
    if (inputExpression.value.length > 0) {
      inputExpression.value =
          inputExpression.value.substring(0, inputExpression.value.length - 1);
      evaluteExpration();
      update();
    }else{
      clearExpression();
    }
  }

  clearExpression() {
    inputExpression.value = "";
    output.value = "";
    update();
  }
}
