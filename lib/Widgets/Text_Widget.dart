import 'package:flutter/material.dart';
import 'package:flutter_widgets/helper/DeviceSize.dart';

class Text_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'This is a simple Text in Flutter',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: displayWidth(context) * 0.04),
              ),
              Divider(),
              Text(
                'Text with bold fontWeight',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: displayWidth(context) * 0.04),
              )
            ],
          ),
        ),
      ),
    );
  }
}
