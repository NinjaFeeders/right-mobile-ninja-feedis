import 'package:flutter/material.dart';

class FeedButton extends StatefulWidget {
      final IconData icon;
    final Color activeColor;
    final Color inactiveColor;
    final String text;

  FeedButton({
    Key? key,
    required this.icon,
    required this.activeColor,
    required this.inactiveColor,
    required this.text,}) : super(key: key);
    


  @override
  State<FeedButton> createState() => _FeedButtonState();
}



class _FeedButtonState extends State<FeedButton> {
  bool _isActive = false;

  void _toggleButton(){
    setState(() {
      _isActive = !_isActive;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: _toggleButton, icon: Icon(widget.icon), color: _isActive ? widget.activeColor : widget.inactiveColor,),
        Text(widget.text),
      ],
    );
  }
}