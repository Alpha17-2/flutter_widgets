import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/helper/DeviceSize.dart';
import 'package:url_launcher/url_launcher.dart';

redirectToCode(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget linebreakAnimation(context){

  return ListView.builder(

    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Container(
        height: displayHeight(context)*0.02,
        width: displayWidth(context)*0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black87,
        ),
      ),
    );
  },itemCount: 6,
  );



}