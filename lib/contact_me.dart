import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:url_launcher/url_launcher.dart';



class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    whatsapp() async{
      var contact = "+9660532981706";
      var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help";
      var iosUrl = "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}";

      try{
        if(Platform.isIOS){
          await launchUrl(Uri.parse(iosUrl));
        }
        else{
          await launchUrl(Uri.parse(androidUrl));
        }
      } on Exception{
        EasyLoading.showError('WhatsApp is not installed.');
      }
    }

    return SafeArea(child: Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/img.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                'شاكرين لكم و نسعد بخدمتكم',
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 33,
                    fontWeight: FontWeight.bold ,decoration: TextDecoration.underline,),

              ),
            ),



            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Column(children: [
                Text(
                  'للتواصل مع الدعم',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                ),Text(
                  '0532981706',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 33,
                      fontWeight: FontWeight.bold),
                ),

//                 MaterialButton(
//
//                   textColor: Colors.green,
//                   onPressed: () {
// whatsapp();
//                   },
//                   child: Text(
//                     "اظغط هنا مباشرة",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   color: Colors.grey,
//                 ),
              ],),
            )
          ],
        ) /* add child content here */,
      ),

    ));
  }
}
