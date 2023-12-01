import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

void main() {
  runApp(MyContact());
}

class MyContact extends StatefulWidget {
  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  var value1;
  var value2;
  var value3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[800],
          body: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.zero,
                      color: Colors.white24,
                      height: 150,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 70,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(65),
                      ),
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/3778603/pexels-photo-3778603.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Jon Karter',
                style: GoogleFonts.righteous(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Text(
                'Software Developer',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                  title: value1 = Text('+91-1234567890'),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  title: value2 = Text('example@gmail.com'),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.language,
                    color: Colors.green,
                  ),
                  title: value3 = Text('www.example.com'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    color: Colors.white,
                    hoverColor: Colors.green,
                    onPressed: () {
                      Share.share(
                        "$value1 \n $value2 \n $value3",
                        subject: "Jon Karter's Contact Details",
                      );
                    },
                    icon: Icon(
                      Icons.share,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
