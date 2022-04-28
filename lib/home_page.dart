import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shadow_friend/common/send_email.dart';
import 'package:shadow_friend/second.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondPage(title: 'Segunda Pagina');
                }));
              },
              child: const Text('Segunda pagina'),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyCustomForm(title: 'Formulario de envío de email');
                }));
              },
              child: const Text('Accede al formulario'),
            ),
          ],
        ),

      ),
    );
  }
}
