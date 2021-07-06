import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:profile/slide_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network(
                'http://image.dongascience.com/Photo/2020/03/5bddba7b6574b95d37b6079c199d7101.jpg',
                width: 150,
                height: 150,
              ),
            ),
            Text(
              'OOO',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'App Developer',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '010-1234-1234',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'github.com/dits1019',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SlideScreen()));
                },
                child: Text('슬라이드 페이지 이동'))
          ],
        ),
      ),
    );
  }
}
