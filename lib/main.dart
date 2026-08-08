import 'package:business_card/info_class.dart';
import 'package:business_card/social_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BusinessCard());
  }
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.amber.shade600, width: 2),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 122,

                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/ec/b3/32/ecb3320a4cb66ecdd9dd903f1fd6a5d8.jpg',
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),

            Text(
              'Habiba Mahmoud',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Flutter Developer',
              style: TextStyle(color: Colors.amber.shade600, fontSize: 22),
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 150, height: 1, color: Colors.amber.shade600),
                Icon(
                  CupertinoIcons.rhombus_fill,
                  color: Colors.amber.shade600,
                  size: 20,
                ),
                Container(width: 150, height: 1, color: Colors.amber.shade600),
              ],
            ),

            SizedBox(height: 15),
            Info(icon: Icons.phone, title: '01061096611', subTitle: 'Mobile'),
            SizedBox(height: 15),
            Info(
              icon: Icons.email,
              title: 'Habiba@gmail.com',
              subTitle: 'Email',
            ),
            SizedBox(height: 15),
            Info(
              icon: Icons.location_on,
              title: 'Cairo, Egypt',
              subTitle: 'Location',
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Social(image: 'assets/github.png'),
                const SizedBox(width: 20),
                Social(image: 'assets/linkedin-big-logo.png'),
                const SizedBox(width: 20),
                Social(image: 'assets/twitter.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
