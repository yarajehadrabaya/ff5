import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
          Center(
            child: Text("Bookings",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
              ),
          )
          ,
          SizedBox( height: 10.0,),
          Expanded(
child: Container(
  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0,),
  margin: EdgeInsets.only(
    // top: MediaQuery.of(context).size.height / 2.5,
    left: 5.0,
    right: 5.0,
  ),

  decoration: BoxDecoration(
    color: Color(0xff1e232c),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
  ),
  child: Column(
   children: [ 
    Container(
      padding: EdgeInsets.only(left: 20.0, ),
     width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
        
    )
   , child:Column(
    children: [
     SizedBox(height: 5.0),
       Center(
         child: QrImageView(
              data: 'Sample QR Data',
              version: QrVersions.auto,
              size: 120.0,
            ),
       ),
      SizedBox(height: 20.0),
      Row(
      crossAxisAlignment: CrossAxisAlignment.start,

        children: [
     
         ClipRRect(
          borderRadius:BorderRadius.circular( 20.0), 
          child: Image.asset("images/infinity.jpg", height: 130,width: 130,fit:BoxFit.cover,)
          
          ),
                SizedBox(width: 20.0),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Row(
              children: [
                Icon(Icons.person, color: Color.fromARGB(255, 204,151,7)),
                SizedBox(
                  width: 10.0,
                ),
                Text("Enjoy Your Movi", //username
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
              Row(
              children: [
                Icon(Icons.movie, color: Color.fromARGB(255, 204,151,7)),
                SizedBox(
                  width: 10.0,
                ),
                Text("Infinity Wars", //username
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
                        SizedBox(height: 5.0),

            Row(
              children: [
                Icon(Icons.group, color: Color.fromARGB(255, 204,151,7)),
                SizedBox(
                  width: 10.0,
                ),
                Text("3", //quantity of tickets
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Icon(Icons.monetization_on, color: Color.fromARGB(255, 204,151,7)),
                SizedBox(
                  width: 10.0,
                ),
                Text("\$200", //quantity of tickets
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
           ],

          )
        ],
      ),
            SizedBox(height: 10.0),
    ],
   )
    ,)
   ]
     


  ),
)) // Container




          ],
        )
      )
    );
  }
}