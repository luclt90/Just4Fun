import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SwitchWidget extends StatefulWidget {
  final String title;
  bool isSwitched = false;
  final Function(bool) onSwitch;

  SwitchWidget({Key key, this.isSwitched, this.onSwitch, this.title})
      : super(key: key);
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(widget.title)),
        Switch(
          value: widget.isSwitched,
          onChanged: (value) async {
            setState(() {
              widget.isSwitched = value;              
            });

            widget.onSwitch(value);
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,
        )
      ],
    );
  }
}
