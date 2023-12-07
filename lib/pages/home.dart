import "package:flutter/material.dart";
import "package:marquee/marquee.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textController = TextEditingController();
  Key _marqueeKey = UniqueKey();
  String marqueeText = " ";

  @override
  Widget build(BuildContext context) {
    // TODO: add a delay when marquee is refreshing and display the dots or something
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      color: Colors.black,
                      child: Marquee(
                        key: _marqueeKey,
                        text: marqueeText,
                        style: const TextStyle(color: Colors.green, fontSize: 150),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              TextField(
                controller: _textController,
                autofocus: true,
                onChanged: (text) {
                  setState(() {
                    marqueeText = text;
                    _marqueeKey = UniqueKey(); // Create a new key to rebuild Marquee
                  });
                },
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
