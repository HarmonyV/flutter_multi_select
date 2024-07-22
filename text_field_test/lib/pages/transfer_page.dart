import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  final String string;

  const TransferPage({
    super.key,
    required this.string,
  });

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Text(
          widget.string,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
