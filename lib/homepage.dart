import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Button App'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('Text Button'),
              onPressed: () {
                print('button pressed');
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.black,
                  side: const BorderSide(color: Colors.black, width: 2),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 24)),
              child: const Text('Outlined Button'),
              onPressed: () {
                print('OnPressed button');
              },
            ),
            MaterialButton(
              onPressed: () {
                print('object');
              },
              shape: StadiumBorder(),
              height: 30,
              minWidth: 150,
              color: Colors.blue,
              child: const Text('Material Button'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated button');
              },
              child: const Text('Elevated Button'),
            )
          ],
        ),
      ),
    );
  }
}
