import 'package:flutter/material.dart';

class audiocall extends StatefulWidget {
  const audiocall({Key? key}) : super(key: key);

  @override
  State<audiocall> createState() => _audiocallState();
}

class _audiocallState extends State<audiocall> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,

        title: Text('Audio Call'),
      ),
      body: Stack(
        children: [
          // Video Feed
          Container(
            color: Colors.white, // Change this color based on your design
            child: Center(
              child: Text(
                'Audio Call....',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Controls
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.call_end, color: Colors.red),
                  onPressed: () {
                    // End call logic
                  },
                ),
                IconButton(
                  icon: Icon(Icons.mic,color: Colors.red,),
                  onPressed: () {
                    // Toggle microphone logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
