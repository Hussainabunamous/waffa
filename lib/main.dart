import 'package:flutter/material.dart';
import 'package:myprojectwaffa/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
          child: Column(children: [
            Container(
              width: 393,
              height: 852,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 13,
                    top: 85,
                    child: Expanded(
                      child: SizedBox(
                        width: 379,
                        child: Opacity(
                          opacity: 0.89,
                          child: Text(
                            'من فضلك اخبرنا اين وجهتك',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0x72151414),
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 133,
                    top: -27,
                    child: Container(
                      width: 100,
                      height: 100,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Positioned(
                    left: -5,
                    top: 187,
                    child: Container(
                      width: 403,
                      height: 793,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/403x793"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: 771,
                    child: Container(
                      width: 378,
                      height: 93,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 24.18,
                            child: Container(
                              width: 378,
                              height: 48.36,
                              decoration: ShapeDecoration(
                                color: Colors.black.withOpacity(0.25),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 108.21,
                            top: 0,
                            child: Container(
                              width: 144.27,
                              height: 93,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 59.42,
                                    top: 29.72,
                                    child: SizedBox(
                                      width: 47.25,
                                      height: 34.52,
                                      child: TextButton(
                                        child: Text('h'),
                                        onPressed: (){},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
