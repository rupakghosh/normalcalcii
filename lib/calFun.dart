double result;
List<String> no1 = [];
List<String> no2 = [];
List<String> parameters = [];

String displayInputs;

List<String> inputs = [];

calculation(String input)
{

  if (input == "C") {
    no1 = [];
    no2 = [];
    parameters = [];
    inputs = [];
    displayInputs = null;
    result = null;
    return;
  }

  if (no1.length != 0 && no2.length != 0 && input == "=") {
    opr();
    parameters = [];
    no1 = ["$result"];
    no2 = [];
    inputs = ["$result"];
    return;
  }


  if (input == "0" ||input == "1" || input == "2" || input == "3" || input == "4" || input == "5" || input == "6" || input == "7" ||input == "8" || input == "9" ||
      input == ".") {
    if (parameters.length == 0 && result == null)
    {
      no1.add(input);
      // When pressed "=" after that hit any number
    } else if (parameters.length == 0 && result != null)
    {
      result = null;
      no1 = [];
      no2 = [];
      no1.add(input);
    }
    else {
      no2.add(input);
    }
  }
  if (input == "+" || input == "-" || input == "x" || input == "/"|| input=="%") {
    if (parameters.length == 0)
    {
      // When for the first time we hit any Operator button
      parameters.add(input);
    } else
      {
      opr();
      // When we press any operator button for the second time
      parameters.add(input);
    }
  }

  inputs.add(input);
  displayInputs = inputs.join();
}

void opr() {
  if (parameters[parameters.length - 1] == "+")
  {
    double sum = addition(no1.join(), no2.join());
    no1 = ["$sum"];
    no2 = [];
    result = sum;
  }
  else if (parameters[parameters.length - 1] == "-") {
    double subtract = subtraction(no1.join(), no2.join());
    no1 = ["$subtract"];
    no2 = [];
    result = subtract;
  } else if
  (parameters[parameters.length - 1] == "x") {
    double multi = multiplication(no1.join(), no2.join());
    no1 = ["$multi"];
    no2 = [];
    result = multi;
  } else if
  (parameters[parameters.length - 1] == "/") {
    double div = division(no1.join(), no2.join());
    no1 = ["$div"];
    no2 = [];
    result = div;
  }
  else if
  (parameters[parameters.length - 1] == "%") {
    double per = reminder(no1.join(), no2.join());
    no1 = ["$per"];
    no2 = [];
    result = per;
  }

}

addition(String num1, String num2) {
  double addResult = double.parse(num1) + double.parse(num2);
  return addResult;
}

subtraction(String num1, String num2) {
  double subResult = double.parse(num1) - double.parse(num2);
  return subResult;
}

multiplication(String num1, String num2) {
  double mulResult = double.parse(num1) * double.parse(num2);
  return mulResult;
}

division(String num1, String num2) {
  double diviResult = double.parse(num1) / double.parse(num2);
  return diviResult;
}
reminder(String num1, String num2) {
  double remresult = double.parse(num1) % double.parse(num2);
  return remresult;
}
