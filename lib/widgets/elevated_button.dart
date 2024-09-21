import 'package:flutter/material.dart';

class ElevatedCustom extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final bool buttonClicked;
  final Color indicatorColor;

  const ElevatedCustom({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonClicked,
    required this.indicatorColor,

  });

  @override
  ElevatedCustomState createState() => ElevatedCustomState();
}

class ElevatedCustomState extends State<ElevatedCustom> {
  bool _isLoading = false;

  void _handleButtonClick() async {
    setState(() {
      _isLoading = true;
    });


    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isLoading ? null : _handleButtonClick,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(250,50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      child: _isLoading
              ?  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.0,
                      color:widget.indicatorColor,
            ),
          )
          : Text(widget.buttonText),
    );
  }
}
