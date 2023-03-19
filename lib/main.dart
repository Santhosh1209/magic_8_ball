import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask my anything'),
          backgroundColor: Colors.indigo[800],
          centerTitle: true,
        ),
        body: Center(
          child: ball()
        ),
      ),
    )
  );
}
class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);

  @override
  State<ball> createState() => _ballState();
}
int count = 1;
class _ballState extends State<ball> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(  // Expanded class - makes the pic fit into the size of the screen that's available
          child: TextButton (
            onPressed :(){
              setState(() {
                print ("Ball tapped!");
                count = Random().nextInt(5) + 1;
              });
            }, child :  Image.asset('images/ball$count.png'),
          )
          )

    ],);
  }
}





