import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text("Projects"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: Color(0xff262628),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "FLUTTER",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Click 2 Code",
                          style: TextStyle(color: Colors.white, fontSize: 38,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "An online Compiler.",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.white70,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
