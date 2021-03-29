import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_sign_demo/Login.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()), (route) => false);
    });


    // TODO: implement build
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueAccent,
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/shopping_icon.png'))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('GoKart',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400,fontFamily:'MarckScript' ),)
        ],
      ),
    ));
  }
}
