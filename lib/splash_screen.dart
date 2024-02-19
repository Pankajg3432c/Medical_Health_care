import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset("images/doctors.png"),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Your Full Name"),
                prefixIcon: Icon(Icons.person)),
          ),
          Padding(padding: EdgeInsets.all(12)),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Your Phone Number"),
                prefixIcon: Icon(Icons.phone)),
          ),
          Padding(padding: EdgeInsets.all(12)),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Your Email Adrress"),
                prefixIcon: Icon(Icons.mail)),
          ),
          SizedBox(height: 20),
          Material(
            color: Color(0xFF7165D6),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text(
                    "Create your Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an Account",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen()));
                  },
                  child: Text("Login"))
            ],
          )
        ],
      ))),
    );
  }
}
