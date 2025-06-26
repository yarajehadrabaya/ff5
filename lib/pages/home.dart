import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "images/wave.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
                Text(
                  " Hello,User", // لازم نحط اسم اليوزر بعد عملية التحقق من الدخول
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60.0),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
             Text(
                  "Welcome to,", 
                  style: TextStyle(
                    color: const Color.fromARGB(184, 255, 255, 255),
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            Row(
              children: [
                Text(
                  "Filmy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Fun",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 227, 190, 86),
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
