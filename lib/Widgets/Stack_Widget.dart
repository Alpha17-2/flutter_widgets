import 'package:flutter/material.dart';
import 'package:flutter_widgets/helper/helpingMethods.dart';
import 'package:ionicons/ionicons.dart';
import '../helper/DeviceSize.dart';

class Stack_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
        backgroundColor: Colors.black87,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(
          Ionicons.logo_github,
          size: displayWidth(context) * 0.1,
        ),
        onPressed: () => redirectToCode(
            'https://github.com/Alpha17-2/flutter_widgets/blob/master/lib/Widgets/Stack_Widget.dart'),
      ),
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: displayHeight(context) * 0.35,
                width: displayWidth(context) * 0.7,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black87,
                    width: 2,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Container(
                        height: displayHeight(context) * 0.30,
                        width: displayWidth(context) * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.amber[200],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black87,
                              width: 2,
                            )),
                      ),
                    ),
                    Positioned(
                      child: Container(
                          height: displayHeight(context) * 0.25,
                          width: displayWidth(context) * 0.5,
                          decoration: BoxDecoration(
                              color: Colors.indigo[200],
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black87,
                                width: 2,
                              )),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(2.5),
                            child: Text(
                              'This is how the Stack Widget Works!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ))),
                    ),
                  ],
                )),
          ],
        ),
        // color: Colors.white,
      ),
    );
  }
}
