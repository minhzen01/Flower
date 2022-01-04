import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 90),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "username",
                  prefixIcon: new Icon(Icons.alternate_email, color: Colors.deepPurple,),
                ),
                onChanged: (text) {
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
