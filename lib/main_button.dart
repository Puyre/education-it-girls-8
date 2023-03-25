import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(maxWidth: double.infinity, minWidth: 100),
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue,
        ),
        child: Center(child: const Text("Кнопка")),
      ),
    );
  }
}
