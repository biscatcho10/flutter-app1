import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child:const Icon(Icons.add),
          ),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(54, 44, 107, 1),
            leading: const Icon(Icons.home),
            title: const Text("Home Page one"),
          ),
          body: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('Button is Clicked!');
                      },
                      icon:const Icon(Icons.add_moderator),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
