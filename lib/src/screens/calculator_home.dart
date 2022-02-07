// ignore_for_file: prefer_const_constructors

import 'package:calculator_app/src/models/calculate.dart';
import 'package:calculator_app/src/models/exception.dart';
import 'package:calculator_app/src/providers/theme_provcider.dart';
import 'package:calculator_app/src/screens/expanded_button.dart';
import 'package:calculator_app/src/screens/expanded_row.dart';
import 'package:calculator_app/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String str = "0";
  var calculation = Calculation();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: Center(
        child: Scaffold(
          appBar: PreferredSize(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              themeProvider.darkTheme == true ? IconButton(
                    onPressed: () {
                    },
                    icon:  Icon(Icons.light_mode_outlined, color: Colors.grey.shade800,)):  IconButton(
                    onPressed: () {
                      themeProvider.dartTheme = !themeProvider.darkTheme;
                    },
                    icon: const Icon(Icons.light_mode_outlined)),
              themeProvider.darkTheme == false ? IconButton(
                    onPressed: () {
                    },
                    icon:  Icon(Icons.mode_night_outlined, color: Colors.black26,)):  IconButton(
                    onPressed: () {
                      themeProvider.dartTheme = !themeProvider.darkTheme;
                    },
                    icon: const Icon(Icons.mode_night_outlined))
              ],
            ),
            preferredSize: const Size(40.0, 30.0),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: Text(
                          str,
                          textScaleFactor: 2.0,
                          style: const TextStyle(fontSize: 30.0),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: const Text(
                          'AC',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          deleteAll();
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: const Image(
                          image: AssetImage('assets/maths.png'),
                          height: 15,
                          width: 15,
                        ),
                        onPressed: () {
                          // deleteOne();
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: const Text('%',
                            style:
                                TextStyle(color: Colors.green, fontSize: 25.0)),
                        onPressed: () {
                          // deleteOne();
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        child: const Image(
                          image: AssetImage('assets/divide.png'),
                          height: 15,
                          width: 15,
                        ),
                        onPressed: () {
                          add('/');
                        },
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ExpandedButton(
                                  onPressed: () {
                                    add('7');
                                  },
                                  child: Text('7',
                                      style: TextStyle(fontSize: 20.0))),
                              ExpandedButton(
                                  onPressed: () {
                                    add('8');
                                  },
                                  child: Text('8',
                                      style: TextStyle(fontSize: 20.0))),
                              ExpandedButton(
                                  onPressed: () {
                                    add('9');
                                  },
                                  child: Text('9',
                                      style: TextStyle(fontSize: 20.0)))
                            ],
                          ),
                          ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ExpandedButton(
                                  onPressed: () {
                                    add('4');
                                  },
                                  child: Text('4',
                                      style: TextStyle(fontSize: 20.0))),
                              ExpandedButton(
                                  onPressed: () {
                                    add('5');
                                  },
                                  child: Text('5',
                                      style: TextStyle(fontSize: 20.0))),
                              ExpandedButton(
                                  onPressed: () {
                                    add('6');
                                  },
                                  child: const Text('6',
                                      style: TextStyle(fontSize: 20.0)))
                            ],
                          ),
                          ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ExpandedButton(
                                  onPressed: () {
                                    add('1');
                                  },
                                  child: const Text('1',
                                      style: TextStyle(fontSize: 20.0))),
                              ExpandedButton(
                                  onPressed: () {
                                    add('2');
                                  },
                                  child: const Text('2',
                                      style: TextStyle(fontSize: 20.0))),
                              ExpandedButton(
                                  onPressed: () {
                                    add('3');
                                  },
                                  child: const Text('3',
                                      style: TextStyle(fontSize: 20.0)))
                            ],
                          ),
                          ExpandedRow(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ExpandedButton(
                                  onPressed: () {
                                    deleteOne();
                                  },
                                  child: const Icon(
                                    Icons.replay_outlined,
                                  )),
                              ExpandedButton(
                                  onPressed: () {
                                    add('0');
                                  },
                                  child: const Text('0',
                                      style: TextStyle(fontSize: 20.0))),
                              ExpandedButton(
                                  onPressed: () {
                                    add('.');
                                  },
                                  child: const Text('.',
                                      style: TextStyle(fontSize: 20.0))),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ExpandedButton(
                              onPressed: () {
                                add('x');
                              },
                              child: const Icon(
                                Icons.close,
                                color: calTextOrangeColor,
                              )),
                          ExpandedButton(
                              onPressed: () {
                                add('-');
                              },
                              child: const Icon(Icons.remove,
                                  color: calTextOrangeColor)),
                          ExpandedButton(
                              onPressed: () {
                                add('+');
                              },
                              child: const Icon(Icons.add,
                                  color: calTextOrangeColor)),
                          ExpandedButton(
                              onPressed: () {
                                getResult();
                              },
                              child: const Text('=',
                                  style: TextStyle(
                                      color: calTextOrangeColor, fontSize: 30)))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void add(String val) {
    setState(() {
      calculation.add(val);
      str = calculation.getString();
    });
  }

  void deleteAll() {
    setState(() {
      calculation.deleteAll();
      str = calculation.getString() == "" ? '0' : calculation.getString();
    });
  }

  void deleteOne() {
    setState(() {
      calculation.deleteOne();
      str = calculation.getString() == "" ? '0' : calculation.getString();
    });
  }

  void getResult() {
    setState(() {
      try {
        str = calculation.getResult().toString();
      } on DivideByZeroException {
        str = '0';
      } finally {
        calculation = Calculation();
      }
    });
  }
}
