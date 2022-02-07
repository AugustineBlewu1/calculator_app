import 'package:calculator_app/src/models/exception.dart';

class Calculation {
  List<String> valueForList = [];

  final RegExp regExp = RegExp("[+\\-x/]");
  final RegExp regExp2 = RegExp("[+\\-x/.]");

  void add(String val) {
    if (valueForList.isEmpty) {
      if (!regExp.hasMatch(val)) {
        valueForList.add(val);
      }
    } else if (regExp.hasMatch(valueForList.last)) {
      if (!regExp2.hasMatch(val)) {
        valueForList.add(val);
      }
    } else {
      if (regExp.hasMatch(val)) {
        if (!RegExp(".").hasMatch(valueForList.last)) valueForList.last += ".0";
        valueForList.add(val);
      } else {
        valueForList.last += val;
      }
    }
  }

  String getString() {
    String str = "";
    for (var ele in valueForList) {
      str += ele;
    }
    return str;
  }

  double getResult() {
    if (regExp.hasMatch(valueForList.last)) valueForList.removeLast();
    if (valueForList.last.lastIndexOf(".") == valueForList.last.length - 1) {
      valueForList.last =
          valueForList.last.substring(0, valueForList.length - 1);
    }

    for (int i = 0; i < valueForList.length; i++) {
      if (valueForList[i] == "x") {
        valueForList[i - 1] =
            "${double.parse(valueForList[i - 1]) * double.parse(valueForList[i + 1])}";
        valueForList.removeAt(i);
        valueForList.removeAt(i);
        i--;
      } else if (valueForList[i] == "/") {
        if (double.parse(valueForList[i + 1]) == 0) {
          throw DivideByZeroException();
        }
        valueForList[i - 1] =
            "${double.parse(valueForList[i - 1]) / double.parse(valueForList[i + 1])}";
        valueForList.removeAt(i);
        valueForList.removeAt(i);
        i--;
      }
    }
    for (int i = 0; i < valueForList.length; i++) {
      if (valueForList[i] == "+") {
        valueForList[i - 1] =
            "${double.parse(valueForList[i - 1]) + double.parse(valueForList[i + 1])}";
        valueForList.removeAt(i);
        valueForList.removeAt(i);
        i--;
      } else if (valueForList[i] == "-") {
        valueForList[i - 1] =
            "${double.parse(valueForList[i - 1]) - double.parse(valueForList[i + 1])}";
        valueForList.removeAt(i);
        valueForList.removeAt(i);
        i--;
      }
    }

    if (valueForList.length != 1) throw Error();
    return double.parse(valueForList[0]);
  }

  void deleteOne() {
    if (valueForList.isNotEmpty) {
      if (valueForList.last.length > 1) {
        valueForList.last =
            valueForList.last.substring(0, valueForList.last.length - 1);
      } else {
        valueForList.removeLast();
      }
    }
  }

  void deleteAll() => valueForList = [];
}
