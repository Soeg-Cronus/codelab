import 'package:flutter/material.dart';
import 'package:minggu4/main.dart';

class CustomButton extends StatefulWidget {
  @override
  CustomButtonState createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool _isPressed = false;
  static const routeName = '/new_widget';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        width: _isPressed ? 80 : 200,
        height: 50,
        decoration: BoxDecoration(
          color: _isPressed ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(_isPressed ? 50 : 10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              'Like',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}