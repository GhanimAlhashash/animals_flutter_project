import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //created a column for the image. removed debug, added boxshape and boxfit aswell as clip behaviour
      //so that the image is a circle. margins so that there is a good space between image and text.
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, bottom: 50),
                alignment: Alignment.center,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/myFavFerret.jpeg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              //created a row here, and in this row the text boxes so that they appear
              //one after another. also made sure to space evenly so text is equal distance.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //this container is for the first text Name
                  //includes: colors, border rounding, etc
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orange[500],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Name: Bigglesworth the 3rd',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //this container is for the center text 'Age'
                  //includes: colors, border rounding, etc
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Age: 4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //this container is for the last text  'Male'
                  //includes: colors, border rounding, etc
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Gender: Male',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
