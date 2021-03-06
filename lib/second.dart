import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shadow_friend/common/send_email.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Atras'),
        ),
      ),
    );
  }
}
