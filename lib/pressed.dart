import 'package:flutter/material.dart';

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _AppState();
}

class _AppState extends State<MyApp2> {
  int count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void inc() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              const Text('Button Pressed:'),
              Text('$count'),
            ],
          ),
        ),
        const SizedBox(
          height: 300
        ),
        Container(
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: inc,
                child: Icon(Icons.add, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.blue, // <-- Button color
                  foregroundColor: Colors.red, // <-- Splash color
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
