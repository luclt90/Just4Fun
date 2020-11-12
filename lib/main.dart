import 'package:flutter/material.dart';
import 'package:just_4_fun/lamp_widget.dart';
import 'package:just_4_fun/switch_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Just 4 Fun'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitchedS0 = false;
  bool isSwitchedS1 = false;
  bool isSwitchedS2 = false;

  bool checkAllIsOff() {
    return !isSwitchedS0 && !isSwitchedS1 && !isSwitchedS2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SwitchWidget(
                title: "S0",
                isSwitched: isSwitchedS0,
                onSwitch: (value) {
                  setState(() {
                    isSwitchedS0 = value;
                  });
                },
              ),
              SwitchWidget(
                title: "S1",
                isSwitched: isSwitchedS1,
                onSwitch: (value) {
                  setState(() {
                    isSwitchedS1 = value;
                  });
                },
              ),
              SwitchWidget(
                title: "S2",
                isSwitched: isSwitchedS2,
                onSwitch: (value) {
                  setState(() {
                    isSwitchedS2 = value;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LampWidget(text: "B0", isOn: checkAllIsOff() ? true : isSwitchedS0),
              LampWidget(text: "B1", isOn: checkAllIsOff() ? true :isSwitchedS0),
              LampWidget(text: "B2", isOn: checkAllIsOff() ? true :isSwitchedS1),
              LampWidget(text: "B3", isOn: checkAllIsOff() ? true :isSwitchedS1),
              LampWidget(text: "B4", isOn: checkAllIsOff() ? true :isSwitchedS1),
              LampWidget(text: "B5", isOn: checkAllIsOff() ? true :isSwitchedS2),
            ],
          )
        ],
      )),
    );
  }
}
