import 'package:flutter/material.dart';
import 'package:flutter_widgets/Model/widgetDetail.dart';
import 'package:flutter_widgets/Widgets/Container_Widget.dart';
import 'package:flutter_widgets/Widgets/Text_Widget.dart';
import 'package:flutter_widgets/helper/DeviceSize.dart';
import '../Widgets/Stack_Widget.dart';

class homeScreen extends StatelessWidget {
  final List<dynamic> widgetList = [
    Text_Widget(),
    Container_Widget(),
    Stack_Widget(),
  ];
  final List<widgetDetail> widgetDetailList = [
    widgetDetail(
        title: 'Text', subtitle: 'Used to display texts on the device.'),
    widgetDetail(
        title: 'Container',
        subtitle:
            'A convenience widget that combines common painting, positioning, and sizing widgets.'),
    widgetDetail(
        title: 'Stack',
        subtitle:
            'A widget that positions it\'s children related to the edges of it\'s box.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
