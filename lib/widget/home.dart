import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home>{
  late int index;

  List showWidget = [];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        leading: Image.asset("assets/images/logo.png"),
        title: Text(
          "Ayo Les",
          style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(
                Icons.person,
                color: Colors.black,
                ),
              iconSize: 35,
              ),
              IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.search),
              iconSize: 35,

              ),
          ],
      ),
      body: Center(
        child: Text("Home"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[400],
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.black54,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded),
              label: "Kelas",
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Jadwal Les",
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Akun",
              ),
          ],
          ),
    );
  }
}