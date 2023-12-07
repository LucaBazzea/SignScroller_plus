import "package:flutter/material.dart";
import "package:marquee/marquee.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(children: [
                  Row(children: [
                    Expanded(
                      child: Container(
                          height: 100, width: 100, color: Colors.black, child: Text("Text")),
                    )
                  ]),
                  const SizedBox(height: 50),
                  const TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue))),
                  )
                ]))));
  }
}
