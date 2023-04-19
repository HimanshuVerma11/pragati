import 'package:flutter/material.dart';
import 'package:pragati/screens/constants_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple[50],
          titleTextStyle: kTitleTextsStyle,
          iconTheme: IconThemeData(
            color: Color(kIconStyle),
          ),
          title: Text(
            'Pragati',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
