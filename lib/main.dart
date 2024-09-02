import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFEB70FF),
            title:
                Text('Email Template', style: TextStyle(color: Colors.white)),
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          body: EmailTemplate(),
        ));
  }
}

class EmailTemplate extends StatelessWidget {
  const EmailTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          TemplateCard(
              imagePath: 'assets/images/frame.png',
              title: 'Customize this email template!',
              description:
              'Boost your emails with Blush! Create dope emails easy and fast! Install the Blush plugin to customize all the illustrations!',
              isVisible: false),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: TemplateCard(
            imagePath: 'assets/images/image_1.png',
                title: 'Customize this email template!',
                description:
                'Boost your emails with Blush! Create dope emails easy and fast! Install the Blush plugin to customize all the illustrations!',
                isVisible: true)),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TemplateCard(
                        imagePath: 'assets/images/image_2.png',
                        title: 'Customize this email template!',
                        description:
                            'Boost your emails with Blush! Create dope emails easy and fast! Install the Blush plugin to customize all the illustrations!',
                        isVisible: true))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TemplateCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isVisible;

  TemplateCard(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        SizedBox(
          height: 8,
        ),
        Center(
          child: Visibility(
            visible: isVisible,
            child: ElevatedButton(
              onPressed: () {
                // Your onPressed function
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                // Background color
                side: BorderSide(color: Colors.black, width: 2),
                // Border (stroke)
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Border radius
                ),
              ),
              child: Text(
                "Try it now",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyScrollView extends StatelessWidget {
  const MyScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.teal,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.teal,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
