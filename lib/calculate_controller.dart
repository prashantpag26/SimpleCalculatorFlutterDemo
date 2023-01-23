import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  RxString inputExpression = "".obs;
  RxString output = "".obs;

  evaluateExpressions() {
    String input =
        inputExpression.value.replaceAll("x", "*").replaceAll("÷", "/");
    Parser parser = Parser();
    Expression expression = parser.parse(input);
    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    var result = eval%1==0 ? eval.round() : double.parse(eval.toStringAsFixed(2));
    output.value = result.toString();
    update();
  }

  addChar(String char) {
    inputExpression.value += char;
    print(inputExpression);
    evaluateExpressions();
    update();
  }

  removeChar() {
    if (inputExpression.value.length > 1) {
      inputExpression.value =
          inputExpression.value.substring(0, inputExpression.value.length - 1);
      evaluateExpressions();
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
