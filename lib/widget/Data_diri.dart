import 'package:flutter/material.dart';

class data_diri extends StatelessWidget {
  const data_diri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pengisian Data Diri",
        
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: TextField(
            autocorrect: true ,
          ),
        ), 
      ),
    );
  }
}