import 'package:flutter/material.dart';

import 'home_screen.dart';


class welcomescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned.fill(  //
            child: Image(
              image: AssetImage('assets/Front-Teched.png'),
              fit : BoxFit.fill,
           ),
          ), 
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height /1.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                    Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height /1.6,
                  decoration: BoxDecoration(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                ),
              ],
              ),
              Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height / 2.666,
              decoration: BoxDecoration(
                color: Color(0xFF674AEF),
              ),
            ),
            ),
            Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height / 2.666,
              padding: EdgeInsets.only(top: 40, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70),
                ),
              ),
              child: Column(
                children: [
                  Text('ครุศาสตร์อุตสาหกรรม',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                  ),
                  SizedBox(height: 15),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    "สาขาวิศวกรรมคอมพิวเตอร์",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 17, 
                    color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  ),
                  SizedBox(height: 60),
                  Material(color: Color(0xFF674AEF),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15,
                      horizontal: 80),
                      child: Text('เริ่มต้น',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                      ),
                    ),
                  ),
                  ),
              ],),
            ),
            ),
          ],
          ),
      ),
    );
  }
}