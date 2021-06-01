import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/main_page.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  var _email, _pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFFC00101),),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('Kembali', style: TextStyle(color: Color(0xFFC00101),),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0,),
                Text("Selamat datang\nkembali!", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,),),
                SizedBox(height: 11.0,),
                Text('Masuk kembali ke akun anda', style: TextStyle(fontSize: 13.0),),
                SizedBox(height: 29.0,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),),
                          hintText: 'Email',
                        ),
                        onChanged: (value) {
                          setState(() {
                            _email = value;
                          });
                        },
                        controller: email,
                      ),
                      // NOTE: validation email belum di buat

                      SizedBox(height: 11,),
                      TextField(
                        obscureText: true,
                        controller: password,
                        onChanged: (value) {
                          setState(() {
                            _pass = value;
                          });
                        },
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),),
                          hintText: 'Password',
                        ),
                      ),

                      // NOTE: set min character password belum di buat
                      SizedBox(height: 10.0,),
                      Text('Lupa password?', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),),
                      SizedBox(height: 65.0,),
                      FlatButton(onPressed: () {
                        setState(() {
                          // create akun
                          if(true) {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
                          }
                        });
                      }, child: Text('Selanjutnya', style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold,),), shape: StadiumBorder(), color: Colors.black, height: 40.0, minWidth: double.infinity,),
                      SizedBox(height: 42.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Belum punya akun? ', style: TextStyle(fontSize: 12),),
                          Text('daftar', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
