import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/next_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextScreen()));
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(color: Color(0xFF7165D6), fontSize: 20),
                  )),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Doctors Appointment",
                style: TextStyle(fontSize: 30, color: Color(0xFF7165D6)),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Appointment Your Doctor",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
