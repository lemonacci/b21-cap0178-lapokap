import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.shield_outlined, size: 33,), title: Text('LAPOKAT', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFC00101), fontSize: 20),),iconTheme: IconThemeData(color: Color(0xFFC00101),),
        elevation: 0.0,
        leadingWidth: 80,
        backgroundColor: Colors.transparent,
        actions: [Container(
          width: 100,
          padding: EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color: Color(0xFFC00101),
            borderRadius: BorderRadius.circular(30)
          ),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Center(child: Text('MuhammadIqbal', overflow: TextOverflow.ellipsis,),)
        ),],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Text('Anda berada dalam\n'
                  'kondisi darurat?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                Text('Tekan tombol di bawah\n'
                  'untuk menelpon bantuan', style: TextStyle(fontSize: 12), textAlign: TextAlign.center,),
                SizedBox(height: 22,),
                Container(width: 200, height: 200,child: RaisedButton(onPressed: (){}, child: Icon(Icons.phone_in_talk, size: 80, color: Colors.white,),shape: CircleBorder(),padding: EdgeInsets.all(25),elevation: 15, color: Color(0xFFFF2B2B),),),
                SizedBox(height: 60,),
                Text('Perlu bantuan lain?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(height: 5,),
                Text('Klik tombol di bawah untuk\n'
                  'memulai percakapan dengan bot kami.', style: TextStyle(fontSize: 11), textAlign: TextAlign.center,),
                SizedBox(height: 17,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 161,
                  height: 87,
                  child: RaisedButton(onPressed: () {}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/bell.png', width: 37,),
                      SizedBox(width: 8,),
                      Text('Bot\n'
                    'bantuan')
                    ],
                  ), shape: StadiumBorder(), color: Colors.white, elevation: 12,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
