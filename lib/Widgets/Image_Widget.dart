import 'package:flutter/material.dart';
import '../helper/DeviceSize.dart';
import 'package:ionicons/ionicons.dart';

class Image_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final descriptionTextStyle =
        TextStyle(color: Colors.black, fontSize: displayWidth(context) * 0.04);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black87,
          child: Icon(
            Ionicons.logo_github,
            size: displayWidth(context) * 0.1,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Image Widget'),
        ),
        body: Container(
          height: displayHeight(context),
          width: displayWidth(context),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: displayHeight(context) * 0.4,
                      width: displayWidth(context) * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black87, width: 2)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: displayWidth(context) * 0.03),
                    Flexible(
                      child: Text(
                        '<- This image is fetched using NetworkImage',
                        style: descriptionTextStyle,
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Container(
                      height: displayHeight(context) * 0.4,
                      width: displayWidth(context) * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black87, width: 2)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'images/owl.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: displayWidth(context) * 0.03),
                    Flexible(
                      child: Text(
                        '<- This image is fetched using AssetImage',
                        style: descriptionTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
