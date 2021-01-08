import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _options=["HOme","search","favourite","Cart"];
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curved Navigation bar"),
        elevation: 0,


      ),
      body: Container(
        color: Colors.red,
        child: Center(child: Text(_options[currentindex],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
      ),
      bottomNavigationBar: CurvedNavigationBar (
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.red,
        animationDuration: Duration(seconds: 2),
        animationCurve: Curves.bounceInOut,
        items: <Widget>[
          Icon(Icons.home,color: Colors.red,),
          Icon(Icons.search,color: Colors.red,),
          Icon(Icons.favorite,color: Colors.red,),
          Icon(Icons.add_shopping_cart,color: Colors.red,),
        ],
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        }

      ),
    );
  }
}
