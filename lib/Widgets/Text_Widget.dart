import 'package:flutter/material.dart';
import 'package:flutter_widgets/helper/DeviceSize.dart';
import 'package:flutter_widgets/helper/helpingMethods.dart';
import 'package:ionicons/ionicons.dart';

class Text_Widget extends StatelessWidget {
  final String text="Flutter is awesome.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Ionicons.logo_github,size: displayWidth(context)*0.1,),
        onPressed: () => redirectToCode('https://github.com/Alpha17-2/flutter_widgets/blob/master/lib/Widgets/Text_Widget.dart'),
      ),

      appBar: AppBar(
        title: Text('Text Widget'),
      ),
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),
        color: Colors.white,
        child: 
           Center(
            child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text+' (Normal)',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:   displayWidth(context) * 0.045),
                  ),
                  Divider(),
                  Text(
                    text+' (Bold)',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize:   displayWidth(context) * 0.045),
                  ),
                  Divider(),
                  Text(
                    text+' (Italic)',
                    style:
                        TextStyle(fontStyle: FontStyle.italic, color: Colors.black,fontSize:   displayWidth(context) * 0.045),
                  ),
                  Divider(),
                  Text(
                    text+' (Underline)',
                    style:
                        TextStyle( color: Colors.black,fontSize:   displayWidth(context) * 0.045,decoration: TextDecoration.underline),
                  ),
                  Divider(),
                  Text(
                    text+' (Strikethrough)',
                    style:
                        TextStyle( color: Colors.black,fontSize:   displayWidth(context) * 0.045,decoration: TextDecoration.lineThrough),
                  ),
                  Divider(),
                  Text(
                    text+' (All)',
                    style:
                        TextStyle(
                            color: Colors.black,
                            fontSize:  displayWidth(context) * 0.045,
                            decoration: TextDecoration.combine([
                                TextDecoration.underline,
                                TextDecoration.lineThrough,

                            ])),
                  ),
                  Divider(),
                  Text(
                    text+' (All + background)',
                    style:
                        TextStyle(
                            color: Colors.black,
                            fontSize:   displayWidth(context) * 0.045,
                            backgroundColor: Colors.red,
                            decoration: TextDecoration.combine([
                                TextDecoration.underline,
                                TextDecoration.lineThrough,
                                
                            ])),  
                  ),
                  Divider(),
                  Text(
                    text+' (Letter Spacing)',
                    style:
                        TextStyle(
                            color: Colors.black,
                            fontSize:   displayWidth(context) * 0.045,
                            letterSpacing: 1.0,
                        ),
                  ),
                  Divider(),
                  Text(
                    text+' (Word Spacing)',
                    style:
                        TextStyle(
                            color: Colors.black,
                            fontSize:   displayWidth(context) * 0.045,
                            wordSpacing: 1.0,
                        ),
                  ),
                  Divider(),
                  Text(
                    text+' (Font Family - Roboto)',
                    style:
                        TextStyle(
                            color: Colors.black,
                            fontSize:   displayWidth(context) * 0.045,
                            fontFamily: 'Roboto',
                        ),
                  ),
                  Divider(),
                  Text(
                    text+' (Colored text)',
                    style:
                        TextStyle(
                            color: Colors.indigo,
                            fontSize:   displayWidth(context) * 0.045,
                        ),
                  ),
                  Divider(),
                  Text(
                    text+' (Colored background)',
                    style:
                        TextStyle(
                            color: Colors.white,
                            fontSize: displayWidth(context) * 0.04,
                            backgroundColor: Colors.pinkAccent,
                        ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      
    );
  }
}
