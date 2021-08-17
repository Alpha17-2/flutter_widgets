import 'package:flutter/material.dart';
import 'package:flutter_widgets/helper/DeviceSize.dart';
import 'package:flutter_widgets/helper/helpingMethods.dart';

class GestureDetector_Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Gesture Detector Widget'),
      ),
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: displayHeight(context) * 0.16,
              width: displayWidth(context),
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(showMySnackbar("'Single Click'"));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Tap me',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.045),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Divider(),
                  ),
                  Text('Single click Gesture')
                ],
              ),
            ),
            Container(
                height: displayHeight(context) * 0.006,
                width: displayWidth(context),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: linebreakAnimation(context),
                )),
            Container(
              height: displayHeight(context) * 0.16,
              width: displayWidth(context),
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onLongPress: () {
                      ScaffoldMessenger.of(context).showSnackBar(showMySnackbar("'Long Press'"));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Long Press Me',
                          style: TextStyle(
                              fontSize: displayWidth(context) * 0.045),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Divider(),
                  ),
                  Text('Long Press Gesture')
                ],
              ),
            ),
            Container(
                height: displayHeight(context) * 0.006,
                width: displayWidth(context),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: linebreakAnimation(context),
                )),
          ],
        ),
      ),
    );
  }
}
