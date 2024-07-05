import 'package:flutter/material.dart';

class ConePage extends StatefulWidget {
  const ConePage({super.key});

  @override
  State<ConePage> createState() => _ConePageState();
}

class _ConePageState extends State<ConePage> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text("Conexões"),
      ),
    );
  }
}