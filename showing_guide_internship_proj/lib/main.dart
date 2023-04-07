import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:showing_guide_internship_proj/herobuttons.dart';
import 'package:showing_guide_internship_proj/button.dart';
import 'package:showing_guide_internship_proj/info.dart';
import 'package:showing_guide_internship_proj/notesection.dart';
import 'package:showing_guide_internship_proj/phonesection.dart';
import 'package:showing_guide_internship_proj/property_features.dart';
import 'package:showing_guide_internship_proj/property.dart';
import 'package:showing_guide_internship_proj/info2.dart';
import 'package:showing_guide_internship_proj/info3.dart';
import 'package:showing_guide_internship_proj/switch.dart';

void main() {
  runApp(const App());
}

void back () {}

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showingGuide(),
    );
  }
}
class showingGuide extends StatefulWidget {
  const showingGuide({Key? key}) : super(key: key);

  @override
  State<showingGuide> createState() => _showingGuideState();
}

class _showingGuideState extends State<showingGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body:Container(
        child: Center(child:ListView(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Carousel(
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.grey.shade100,
                dotBgColor: Colors.transparent,
                dotVerticalPadding: 5.0,
                dotPosition: DotPosition.bottomRight,
                images: [
                  Image.asset('assets/images/1.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/images/2.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/images/3.jpg', fit: BoxFit.cover,),
                  Image.asset('assets/images/4.jpg', fit: BoxFit.cover,),
                ],
              ),
            ),
            MyButtonF(onTap: back,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('MLS#: E5579076',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Icon(Icons.shopping_cart_outlined,color: Colors.black,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:15 ,top: 10,bottom: 10),
              child: Row(
                children: [
                  Text('Listed for:'),
                  SizedBox(width: 4),
                  Text("\$1,549,586",
                    style: TextStyle(color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("2118 Thornridge Cir. Syracuse, Connecticut 35624"),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MapF(onTap: back),
                SizedBox(width: 10),
                MapF1(onTap: back,),
              ],
            ),
            SizedBox(height: 25),
            MyWidget(),
            SizedBox(height: 25),
            PropertyDetailsWidget(),
            KeyFacts(),
            PropertyHistoryWidget(),
            Df(),
            PoiP(),
            SizedBox(height:130,width: 100, child: MyNotesScreen()),
            ListingAgentWidget(),
          ],
        ),
        ),
      ),
    );
  }
}