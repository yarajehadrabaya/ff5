import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> getFormattedDates() {
    final now = DateTime.now();
    final formatter = DateFormat('EEE d');
    return List.generate(7, (index) {
      final date = now.add(Duration(days: index));
      return formatter.format(date);
    });
  }

  int track = 0;
  bool eight = false, ten = false, six = false;

  @override
  Widget build(BuildContext context) {
    final dates = getFormattedDates();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1e232c),
      body: Stack(
        children: [
          // الصورة في الخلفية
          SizedBox(
            height: screenHeight * 0.55,
            width: screenWidth,
            child: Image.asset(
              "images/infinity.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // زر الرجوع
          Positioned(
            top: 40,
            left: 20,
            child: Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // المحتوى الأسود الغاطس داخل الصورة
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * 0.59, // يتحكم بالجزء المغطى من الشاشة
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              decoration: const BoxDecoration(
                color: Color(0xff1e232c),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Infinity Wars",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Action, Adventure",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16.0,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "Select Date",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dates.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              track = index;
                              setState(() {});
                            },
                            child: Container(
                              width: 100.0,
                              margin: const EdgeInsets.only(right: 12.0),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 221, 201, 51),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: track == index
                                      ? Colors.white
                                      : const Color.fromARGB(255, 0, 0, 0),
                                  width: 4.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  dates[index],
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 12, 12, 12),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "Select Time Slot",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTimeBox("08:00 PM", eight, () {
                          eight = true;
                          ten = false;
                          six = false;
                          setState(() {});
                        }),
                        buildTimeBox("10:00 PM", ten, () {
                          ten = true;
                          eight = false;
                          six = false;
                          setState(() {});
                        }),
                        buildTimeBox("06:00 PM", six, () {
                          six = true;
                          eight = false;
                          ten = false;
                          setState(() {});
                        }),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  color: Color(0xffeed51e),
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 200,
                         decoration: BoxDecoration(
                           color: Color(0xffeed51e),borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                            ),
                         ),
                        child:Column(
                          children: [
                             Text(
                                "Total:""\$50",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                            Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ],
                        ),

                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTimeBox(String time, bool selected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: selected
          ? Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffeed51e),
                    width: 4.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  time,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 221, 201, 51),
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                time,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
    );
  }
}
