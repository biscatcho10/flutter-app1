import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  pressBtn(name) {
    print("Hello, $name");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.blue,
        accentColor: Colors.red,
        buttonTheme: const ButtonThemeData(
            buttonColor: Colors.black12, textTheme: ButtonTextTheme.primary),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.brown),
            elevation: MaterialStateProperty.all(10),
          ),
        ),
      ),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                FlatButton(onPressed: () {}, child: const Text("FlatBtn")),
                OutlineButton(
                    onPressed: () {}, child: const Text("OutLineBtn")),
                RaisedButton(onPressed: () {}, child: const Text("RaisedBtn"))
              ],
            ),
            Row(
              children: [
                TextButton(onPressed: () {}, child: const Text("TextBtn")),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("OutLinedBtn"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("ElevatedBtn"),
                )
              ],
            ),
            Row(
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.one_k),
                    label: const Text("TextBtn")),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.eleven_mp),
                    label: const Text("OutLinedBtn")),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ten_k),
                  label: const Text("ElevatedBtn"),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () => pressBtn("karim osama"),
                  icon: const Icon(
                    Icons.one_k,
                    // color: Colors.redAccent,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
