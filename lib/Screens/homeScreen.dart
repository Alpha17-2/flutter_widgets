import 'package:flutter/material.dart';
import '../Model/widgetDetail.dart';
import '../Widgets/Container_Widget.dart';
import '../Widgets/GestureDetector_Widget.dart';
import '../Widgets/Text_Widget.dart';
import '../helper/DeviceSize.dart';
import '../Widgets/Stack_Widget.dart';
import '../Widgets/Image_Widget.dart';

class homeScreen extends StatelessWidget {
  final List<dynamic> widgetList = [
    Text_Widget(),
    Container_Widget(),
    Stack_Widget(),
    GestureDetector_Widget(),
    Image_Widget(),
  ];
  final List<widgetDetail> widgetDetailList = [
    widgetDetail(
      title: 'Text',
      subtitle: 'Used to display texts on the device.',
    ),
    widgetDetail(
      title: 'Container',
      subtitle:
          'A convenience widget that combines common painting, positioning, and sizing widgets.',
    ),
    widgetDetail(
      title: 'Stack',
      subtitle:
          'A widget that positions it\'s children related to the edges of it\'s box.',
    ),
    widgetDetail(
      title: 'GestureDetector',
      subtitle: 'A widget that detects gestures.',
    ),
    widgetDetail(
      title: 'Image',
      subtitle: 'A widget that displays an image.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Common Flutter Widgets'),
      ),
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),
        color: Colors.white,
        child: ListView.builder(
          addRepaintBoundaries: true,
          padding: EdgeInsets.all(4.0),
          itemBuilder: (context, index) {
            return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => widgetList[index]));
              },
              isThreeLine: true,
              title: Text(
                widgetDetailList[index].title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: displayWidth(context) * 0.05),
              ),
              subtitle: Text(
                widgetDetailList[index].subtitle,
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: displayWidth(context) * 0.035),
              ),
            );
          },
          itemCount: widgetDetailList.length,
        ),
      ),
    );
  }
}
