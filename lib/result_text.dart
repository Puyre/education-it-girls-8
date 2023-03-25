import 'package:flutter/material.dart';

class ResultText extends StatefulWidget {
  final String result;

  const ResultText({
    super.key,
    required this.result,
  });

  @override
  State<ResultText> createState() => _ResultTextState();
}

class _ResultTextState extends State<ResultText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.result);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
