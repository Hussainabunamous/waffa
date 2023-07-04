import 'package:flutter/material.dart';
import 'package:myprojectwaffa/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 200.0),
              child: Container(
                width: double.infinity,
                child: Center(
                    child: Text(
                  'مرحبا بك',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "أنقر هنا",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
