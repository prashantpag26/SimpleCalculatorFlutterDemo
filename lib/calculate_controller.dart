import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {

  String inputExpression = "";
  String output = "";

  evaluteExpration() {
    String input = inputExpression;
    Parser parser = Parser();
    Expression expression = parser.parse(input);
    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    output = eval.toString();
  }

  addChar(String char) {
    inputExpression += char;
  }

  removeChar() {
    inputExpression = inputExpression.substring(0, inputExpression.length - 1);
  }

  clearExpression(){
    inputExpression="";
    output="";
  }
}