import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoverEffectButton extends StatefulWidget {
  const HoverEffectButton(
      {super.key,
      required this.fontWeight,
      required this.fontSize,
      required this.text});
  final FontWeight fontWeight;
  final double fontSize;
  final String text;

  @override
  State<HoverEffectButton> createState() => _HoverEffectButtonState();
}

class _HoverEffectButtonState extends State<HoverEffectButton> {
  Color? color;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    color = Colors.orange;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: MouseRegion(
        onHover: (_) {
          setState(() {
            color = Colors.blue;
          });
        },
        onExit: (_) {
          setState(() {
            color = Colors.orange;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: widget.fontSize,
                    fontWeight: widget.fontWeight),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
