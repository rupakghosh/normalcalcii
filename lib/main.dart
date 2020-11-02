import 'calFun.dart';
import 'constant.dart';
import 'button.dart';
import 'package:flutter/material.dart';

void main() => runApp(Calcii());

class Calcii extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Calculator()
          ,
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({
    Key key
  }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple Calculator"),

            ),

    body: Column(

      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  displayInputs == null ? "" : "$displayInputs", //conditional
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.green,
                  ),
                ),
                Align(
                  child: Text(
                    result == null ? "" : "$result",
                    style: TextStyle(
                        fontSize: 45, color: Colors.blueGrey, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Buttons(
              text: "C",

              backgroundColor: Colors.brown,
              textColor: Colors.white,
              press: () {
                setState(
                      () {
                    calculation("C");
                  },
                );
              },
            ),
            Buttons(
              text: "%",

              backgroundColor: Colors.lightBlueAccent,
              press: () {
                setState(
                      () {
                    calculation("%");
                  },
                );
              },
            ),


            Buttons(
              text: "/",
              backgroundColor: Colors.lightBlueAccent,
              press: () {
                setState(
                      () {
                    calculation("/");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Buttons(
              text: "7",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("7");
                  },
                );
              },
            ),
            Buttons(
              text: "8",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("8");
                  },
                );
              },
            ),
            Buttons(
              text: "9",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("9");
                  },
                );
              },
            ),
            Buttons(
              text: "x",
              backgroundColor: Colors.lightBlueAccent,
              press: () {
                setState(
                      () {
                    calculation("x");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Buttons(
              text: "4",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("4");
                  },
                );
              },
            ),
            Buttons(
              text: "5",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("5");
                  },
                );
              },
            ),
            Buttons(
              text: "6",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("6");
                  },
                );
              },
            ),
            Buttons(
              text: "-",
              press: () {
                setState(
                      () {
                    calculation("-");
                  },
                );
              },
              backgroundColor: Colors.lightBlueAccent,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Buttons(
              text: "1",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("1");
                  },
                );
              },
            ),
            Buttons(
              text: "2",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("2");
                  },
                );
              },
            ),
            Buttons(
              text: "3",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("3");
                  },
                );
              },
            ),
            Buttons(
              text: "+",
              backgroundColor: Colors.lightBlueAccent,
              press: () {
                setState(
                      () {
                    calculation("+");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(),
            ),

            Buttons(
              text: "0",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation("0");
                  },
                );
              },
            ),
            Buttons(
              text: ".",
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              press: () {
                setState(
                      () {
                    calculation(".");
                  },
                );
              },
            ),
            Buttons(
              text: "=",
              backgroundColor: Colors.brown,
              textColor: Colors.white,
              press: () {
                setState(
                      () {
                    calculation("=");
                  },
                );
              },
            ),
          ],
        ),
      ],
    ),
    );
  }
}