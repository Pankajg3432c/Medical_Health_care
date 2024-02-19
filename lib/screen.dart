import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/navbartools.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.chat)),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.schedule)),
              Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Navtools()));
                  },
                  icon: Icon(Icons.settings)),
              Spacer(),
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(height: 100),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1526779259212-939e64788e3c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1570051008600-b34baa49e751?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1502236876560-243e78f715f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D"),
                          fit: BoxFit.cover)),
                )
              ],
              options: CarouselOptions(
                autoPlay: true,
                height: 180.0,
                autoPlayAnimationDuration: Duration(milliseconds: 200),
              ),
            ),
            SizedBox(height: 100),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1526779259212-939e64788e3c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1570051008600-b34baa49e751?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1502236876560-243e78f715f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZyZWUlMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D"),
                          fit: BoxFit.cover)),
                )
              ],
              options: CarouselOptions(
                autoPlay: true,
                height: 180.0,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
            ),
          ],
        ));
  }
}
