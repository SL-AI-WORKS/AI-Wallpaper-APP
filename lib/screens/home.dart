import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(

                              margin:EdgeInsets.symmetric(horizontal:10),
                              width: 270,
                              child: TextField(
                                
                                decoration: InputDecoration(
                                  border:UnderlineInputBorder(borderSide:BorderSide.none),
                                  hintText: "Enter your prompt",
                                ),
                              ),
                            ),
                            Container(
                              margin:EdgeInsets.symmetric(horizontal:10),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Generate",
                                  style: TextStyle(color: Colors.white),
                                ),

                                style: TextButton.styleFrom(
                                    
                                    backgroundColor:
                                        Color.fromARGB(255, 182, 5, 214),
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            ),
                          ],
                        ),
                        decoration:
                            BoxDecoration(color: Colors.white, 
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 0),
                            spreadRadius:2,
                            blurRadius:10,
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
