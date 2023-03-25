import 'package:flutter/material.dart';

class ListTestWidget extends StatefulWidget {
  @override
  State<ListTestWidget> createState() => _ListTestWidgetState();
}

class _ListTestWidgetState extends State<ListTestWidget> {
  final List<String> names = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (String value) {
            setState(() {
              names.add(value);
            });
          },
        ),
        ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Text(names[index]);
          },
        ),
      ],
    );
  }
}
