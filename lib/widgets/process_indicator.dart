import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextButtonCustom extends StatefulWidget {
  final Color buttonBackGroundColor;
  final Color indicatorColor;
  final String buttonText;
  final Color buttonTextColor;
  final String imagePath;
  final VoidCallback onPressed;

  const TextButtonCustom({
    super.key,
    required this.buttonBackGroundColor,
    required this.indicatorColor,
    required this.buttonText,
    required this.buttonTextColor,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  State<TextButtonCustom> createState() => TextButtonCustomState();
}

class TextButtonCustomState extends State<TextButtonCustom> {
  bool _isLoading = false;

  void _handleButtonClick() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate a delay
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    // Call the onPressed callback
    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: _isLoading ? null : _handleButtonClick,
      icon: Image.asset(
            widget.imagePath,
            fit: BoxFit.contain,
      ),
      label:  _isLoading
          ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              color: widget.indicatorColor,
            ),
      )
          :Text(widget.buttonText, style:  TextStyle(color:widget.buttonTextColor),),
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: widget.buttonBackGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
