import 'package:flutter/material.dart';
import 'package:text_field_test/pages/transfer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textEditingController,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint(
                      "TEXT FROM TEXTFIELD: ${textEditingController.text}");

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TransferPage(string: textEditingController.text),
                    ),
                  );
                },
                child: const Icon(Icons.account_balance)),
          ],
        ),
      ),
    );
  }
}
