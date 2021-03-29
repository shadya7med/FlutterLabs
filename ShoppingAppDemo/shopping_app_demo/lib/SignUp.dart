import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {

  bool _isHidden = true ;

  void togglePasswordView(){
    setState(() {
      _isHidden = !_isHidden ;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/shopping_icon.png',
            height: 120,
            width: 120,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              decoration:
                  InputDecoration(hintText: 'Email Address'),
            ),
          ),Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              decoration:
              InputDecoration(hintText: 'Username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Password',suffix:InkWell(onTap: togglePasswordView,child: Icon(Icons.visibility))),
              obscureText: _isHidden,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Repeat Password',suffix:InkWell(onTap: togglePasswordView,child: Icon(Icons.visibility))),
              obscureText: _isHidden,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: () {
                //also check for info then
                Navigator.pushNamedAndRemoveUntil(context, '/productDetails',(_)=>false);
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.blue,
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have and account? ",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'Login',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),


        ],
      ),
    )));
  }
}
