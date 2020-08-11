bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

bool isOperation(String s) {
  var operations = {'+', '-', '*', '/'};
  if (operations.contains(s)) return true;
  return false;
}

double addition(double x, double y) {
  return x + y;
}

double subtraction(double x, double y) {
  return x - y;
}

double multiplication(double x, double y) {
  return x * y;
}

double division(double x, double y) {
  return x / y;
}

bool inputCheck(String process) {
  var inputs = process.split(' ');
  if (inputs.length != 3 ||
      !isNumeric(inputs[0]) ||
      !isOperation(inputs[1]) ||
      !isNumeric(inputs[2])) return false;
  return true;
}

double judgment(String process) {
  var inputs = process.split(' ');
  switch (inputs[1]) {
    case '+':
      return addition(double.parse(inputs[0]), double.parse(inputs[2]));
      break;
    case '-':
      return subtraction(double.parse(inputs[0]), double.parse(inputs[2]));
      break;
    case '*':
      return multiplication(double.parse(inputs[0]), double.parse(inputs[2]));
      break;
    case '/':
      return division(double.parse(inputs[0]), double.parse(inputs[2]));
      break;
    default:
      return double.negativeInfinity;
      break;
  }
}
