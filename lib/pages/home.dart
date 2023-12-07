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
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(children: [
                  Row(children: [
                    Expanded(
                      child: Container(
                          height: 180,
                          color: Colors.black,
                          child: Marquee(
                            text: "Text",
                            style: const TextStyle(color: Colors.green, fontSize: 150),
                          )),
                    )
                  ]),
                  const SizedBox(height: 25),
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
