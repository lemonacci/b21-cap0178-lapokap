import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/login.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController username = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  var _email, _username, _pass;

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
                Text("Buat Akun", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,),),
                SizedBox(height: 11.0,),
                Text('Buat akun untuk mulai menjelajahi aplikasi', style: TextStyle(fontSize: 13.0),),
                SizedBox(height: 29.0,),
                Container(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xFFEEEEEE),
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),),
                          hintText: 'Username',
                        ),
                        controller: username,
                        onChanged: (value) {
                          setState(() {
                            _username = value;
                          });
                        },
                      ),
                      SizedBox(height: 11,),

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

                      SizedBox(height: 15.0,),
                      Text('Password minimal berisi 8 karakter atau lebih dan terdiri dari huruf besar,'
                          'huruf kecil, angka, dan simbol.', style: TextStyle(fontSize: 10.0,),),
                      SizedBox(height: 26.0,),
                      FlatButton(onPressed: () {
                        setState(() {
                            // create akun
                          if(_username != null && _pass != null && _email != null) {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          }
                        });
                      }, child: Text('Buat Akun', style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold,),), shape: StadiumBorder(), color: Colors.black, height: 40.0, minWidth: double.infinity,),
                      SizedBox(height: 73.0,),
                      RichText(text: TextSpan(
                        style: TextStyle(fontSize: 13.0, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: 'Dengan mendaftar, anda telah setuju dengan\n'),
                          TextSpan(text: 'Syarat Penggunaan', style: TextStyle(fontWeight: FontWeight.bold),),
                          TextSpan(text: ' dan '),
                          TextSpan(text: 'Kebijakan', style: TextStyle(fontWeight: FontWeight.bold),),
                          TextSpan(text: ' kami'),
                        ],
                      ),textAlign: TextAlign.center,),
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

