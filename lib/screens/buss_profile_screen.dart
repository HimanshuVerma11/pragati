import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pragati/routes/routes_constants.dart';
import 'package:pragati/screens/business_profile.dart';
import 'package:pragati/screens/constants_screen.dart';

class BussProfilePage extends StatefulWidget {
  @override
  State<BussProfilePage> createState() => _BussProfilePageState();
}

class _BussProfilePageState extends State<BussProfilePage> {
  final formKey = GlobalKey<FormState>();
  var userNameController = TextEditingController();
  var emailNameController = TextEditingController();
  var mobNumController = TextEditingController();
  var bussTypeController = TextEditingController();
  var addressController = TextEditingController();
  var aboutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF3DBED),
        appBar: AppBar(
          elevation: kelevation,
          backgroundColor: Color(kBackGroundColor),
          title: Text('Create your new business profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF330E62),
              )),
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: ListView(
              // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                TextFormField(
                  controller: userNameController,
                  validator: (userName) {
                    if (userName == null) {
                      return 'Please enter user name';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                    ),
                    labelText: 'User Name',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailNameController,
                  validator: (emailName) {
                    if (emailName == null) {
                      return 'Please enter your email';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                    ),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: mobNumController,
                  validator: (mobNum) {
                    if (mobNum == null) {
                      return 'Please enter your number';
                    } else if (mobNum.length < 10) {
                      return 'Please enter valid number';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                    ),
                    labelText: 'Mobile No.',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: bussTypeController,
                  validator: (bussType) {
                    if (bussType == null) {
                      return 'Please enter your business profile';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.business_center),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                    ),
                    labelText: 'Bussiness Type',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: addressController,
                  validator: (address) {
                    if (address == null) {
                      return 'Please enter your address';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.place),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                    ),
                    labelText: 'Address',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: aboutController,
                  validator: (about) {
                    if (about == null) {
                      return 'Please enter business details';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mode_comment),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                    ),
                    labelText: 'About',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 3,
                      backgroundColor: Colors.pink,
                      padding: EdgeInsets.all(15)),
                  onPressed: () {
                    // final isValid = formKey.currentState?.validate();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BusinessProfile(
                                  userNameFromTextfield:
                                      userNameController.text.toString(),
                                  eMailFromTextfield:
                                      emailNameController.text.toString(),
                                  mobileNumFromTextfield:
                                      mobNumController.text.toString(),
                                  bussTypeFromTextfield:
                                      bussTypeController.text.toString(),
                                  addressFromTextfield:
                                      addressController.text.toString(),
                                  aboutFromTextfield:
                                      aboutController.text.toString(),
                                )));
                  },
                  child: Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
