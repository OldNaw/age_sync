import 'package:flutter/material.dart';

class Pathway extends StatefulWidget {
  const Pathway({
    super.key,
    required this.title,
    required this.imagePath,
    required this.screen,
  });

  final String title;
  final String imagePath;
  final Widget screen;

  @override
  State<Pathway> createState() => _PathwayState();
}

class _PathwayState extends State<Pathway> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement( //change push replacement to what it really should be so you have the option to go back
            MaterialPageRoute(
              builder: (BuildContext context) {
                return widget.screen;
              },
            ),
          );
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple, foregroundColor: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [Text(widget.title), Image.network(widget.imagePath)],
          ),
        ),
      ),
    );
  }
}