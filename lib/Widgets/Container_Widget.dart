import 'package:flutter/material.dart';
import 'package:flutter_widgets/helper/DeviceSize.dart';
import 'package:flutter_widgets/helper/helpingMethods.dart';
import 'package:ionicons/ionicons.dart';

class Container_Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final descriptionTextStyle = TextStyle(
        color: Colors.black,
        fontSize: displayWidth(context)*0.04
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Ionicons.logo_github,size: displayWidth(context)*0.1,),
        onPressed: () => redirectToCode('https://github.com/Alpha17-2/flutter_widgets/blob/master/lib/Widgets/Text_Widget.dart'),
      ),

      appBar: AppBar(
        title: Text('Container Widget'),
      ),
      body: Container(
        height: displayHeight(context),
        width: displayWidth(context),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          color: Colors.red,
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Simple colored container',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,

                            )
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Bordered container using decoration',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Rounded border container using decoration',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Only certain edges of the container are round bordered using decoration property',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),  
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              colors: [
                                Colors.blue[200],
                                Colors.blue[300],
                                Colors.blue[400],
                                Colors.indigo[300],
                                Colors.indigo[400],
                                
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Gradient color box decoration using gradient property of boxdecoration property',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.black26,
                                offset: Offset(-6,6),
                              
                              ),
                            ],
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Box shadow using boxShadow property of boxdecoration property',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        
                          child: Text('Child of container.',style: TextStyle(
                            backgroundColor: Colors.indigo[600],
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Child of container without padding.',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text('Child of container.',style: TextStyle(
                            backgroundColor: Colors.indigo[600],
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Child of container with padding.',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,


                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Text('Child of container.',style: TextStyle(
                              backgroundColor: Colors.pinkAccent,

                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Child of container at center.',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                              'images/demo.png',
                          
                            ),
                            alignment: Alignment.center,
                            fit: BoxFit.fitHeight,
                            ),
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Image inside container.\nfit : Boxfit.fitHeight',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                              'images/demo.png',
                          
                            ),
                            alignment: Alignment.center,
                            fit: BoxFit.fitWidth,
                            ),
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Image inside container.\nfit : Boxfit.fitWidth',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                              'images/demo.png',
                          
                            ),
                            alignment: Alignment.center,
                            fit: BoxFit.fill,
                            ),
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Image inside container.\nfit : Boxfit.fill',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                              'images/demo.png',
                          
                            ),
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            ),
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Image inside container.\nfit : Boxfit.contain',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                              'images/demo.png',
                          
                            ),
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Image inside container.\nfit : Boxfit.cover',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context)*0.15,
                          width: displayWidth(context)*0.45,
                          transform: Matrix4.rotationZ(0.1),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(
                              color: Colors.indigo,
                              width: 1,
                            ),
                          ),
                        ),
                        SizedBox(width: displayWidth(context)*0.03,),
                        Flexible(child: Text('Transform container.',style: descriptionTextStyle,)),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
