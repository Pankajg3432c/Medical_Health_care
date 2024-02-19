import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/splash_screen.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
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
                label: Text("Enter Your Username"),
                prefixIcon: Icon(Icons.person)),
          ),
          Padding(padding: EdgeInsets.all(12)),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter Your Password"),
                prefixIcon: Icon(Icons.lock)),
          ),
          SizedBox(height: 20),
          Material(
            color: Color(0xFF7165D6),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                    ),
                  ),
                )),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have Your Account",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Splashscreen()));
                  },
                  child: Text("Create your Account"))
            ],
          )
        ],
      ))),
    );
  }
}
