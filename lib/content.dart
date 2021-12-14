import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text("Home Page"),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          shadowColor: Colors.indigo,
          elevation: 8,
          actions: const [
            Icon(
              Icons.arrow_forward,
              color: Colors.grey,
              size: 30,
              textDirection: TextDirection.ltr,
            )
          ],
        ),
        body: Container(
          child: const Text("Home Content"),
          color: const Color(0xff4d6b55),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        ),
      ),
    );
  }
}
