import 'package:flutter/material.dart';

class PrivatePage extends StatefulWidget {
  const PrivatePage({super.key});

  @override
  State<PrivatePage> createState() => _PrivatePageState();
}

class _PrivatePageState extends State<PrivatePage> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text("Feed privado"),
      ),
    );
  }
}