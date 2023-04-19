import 'package:flutter/material.dart';
import 'package:pragati/screens/buss_profile_screen.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image(
              image: AssetImage('images/pngBuss.png'),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 80,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BussProfilePage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Create your Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
