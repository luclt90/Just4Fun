import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LampWidget extends StatefulWidget {
  final String text;
  final bool isOn;

  const LampWidget({Key key, this.text, this.isOn}) : super(key: key);
  @override
  LampState createState() => LampState();
}

class LampState extends State<LampWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          FontAwesomeIcons.lightbulb,
          color: widget.isOn ? Colors.yellow : Colors.grey,
        ),
        Center(
          child: Text(widget.text),
        )
      ],
    );
  }
}
