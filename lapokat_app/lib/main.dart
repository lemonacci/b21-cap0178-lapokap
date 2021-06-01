import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/buat_akun.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) => Scaffold(
        body: Stack(
          children: [
            Container(
              child: Image.asset('assets/background_img.png', fit: BoxFit.fill,),
              height: double.infinity,
            ),
            Container(color: Color(0xAA333333),),
            Padding(
              padding: const EdgeInsets.only(left: 51.0, right: 51.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [SizedBox(height: 98.0,),
                          Text('Kami\ndi sini\nuntuk\nanda', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),),
                          SizedBox(height: 11.0,),
                          Image.asset('assets/love.png', width: 48.0,),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(child: Text('Klik tombol di bawah ini untuk memulai.', style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold,),)),
                          SizedBox(height: 13.0,),
                          FlatButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                          }, child: Text('Buat Akun', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),), color: Colors.white, height: 50.0, minWidth: 200.0,shape: StadiumBorder(),),
                          SizedBox(height: 13.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Atau, klik ', style: TextStyle(fontSize: 11.0, color: Colors.white,),),
                              GestureDetector(child: Text('di sini', style: TextStyle(fontSize: 11.0, color: Colors.white, decoration: TextDecoration.underline, fontWeight: FontWeight.bold,),), onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                              },),
                              Text(' untuk masuk', style: TextStyle(fontSize: 11.0, color: Colors.white,),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),),
    );
  }
}
