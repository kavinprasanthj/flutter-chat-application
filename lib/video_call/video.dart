import 'package:flutter/material.dart';

class videocall extends StatefulWidget {
  const videocall({Key? key}) : super(key: key);

  @override
  State<videocall> createState() => _videocallState();
}

class _videocallState extends State<videocall> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,

        title: Text('Video Call'),
      ),
      body: Stack(
        children: [
          // Video Feed
          Container(
            color: Colors.white, // Change this color based on your design
            child: Center(
              child: Text(
                'Video Call....',
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
                  icon: Icon(Icons.camera_alt,color: Colors.red,),
                  onPressed: () {
                    // Toggle camera logic
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
