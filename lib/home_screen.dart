import 'package:flutter/material.dart';
import 'package:myprojectwaffa/widget/input_card.dart';
import 'package:myprojectwaffa/constants.dart';
import 'package:myprojectwaffa/widget/top_rated_screen.dart';

import 'input_card_content.dart';
enum Gender { resturent, cafee, other }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender selectedGender = Gender.resturent;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/img.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'من فضلك أخبرنا أين وجهتك',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              SizedBox(height: 32,),
              Text(
                'الدولة',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[500] , fontWeight: FontWeight.bold),
                    hintText: "يُرجى كتابة الدولة هنا ...",
                    fillColor: Colors.white70,
                  ),
                ),
              ),
              SizedBox(height: 32,),

              Text(
                'المنطقة',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[500] , fontWeight: FontWeight.bold),
                    hintText: "يُرجى كتابة المنطقة هنا ...",
                    fillColor: Colors.white70,
                  ),
                ),
              ),

              SizedBox(height: 64,),
              Text(
                'أختر عن ماذا تبحث ؟',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),

              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: InputCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.resturent;
                          });
                        },
                        color: selectedGender == Gender.resturent
                            ? kActiveControlColor
                            : kInactiveControlColor,
                        cardChild: InputCardContent(
                          text: 'مطعم',
                        ),
                      ),
                    ),
                    Expanded(
                      child: InputCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.cafee;
                          });
                        },
                        color: selectedGender == Gender.cafee
                            ? kActiveControlColor
                            : kInactiveControlColor,
                        cardChild: InputCardContent(
                          text: 'كوفي',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TopRatedScreen()));
                },
                child: Text(
                  "تصفح",
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
      ),
    );
  }
}
