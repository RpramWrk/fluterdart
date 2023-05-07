import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utp/screens/profilescreen.dart';
import 'package:utp/widget/logo.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Logo(isColored: true),
          const Spacer(),
          CarouselSlider(
            items: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  padding: EdgeInsets.all(25),

                  width: 200, // tambahkan properti width
                  height: 150, // tambahkan properti height
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:
                        BorderRadius.circular(1), // ubah nilai borderRadius
                  ),
                  child: Image.asset('assets/raka3.jpeg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  padding: EdgeInsets.all(25),

                  width: 200, // tambahkan properti width
                  height: 150, // tambahkan properti height
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:
                        BorderRadius.circular(50), // ubah nilai borderRadius
                  ),
                  child: Image.asset('assets/raka1.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  padding: EdgeInsets.all(25),

                  width: 200, // tambahkan properti width
                  height: 150, // tambahkan properti height
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:
                        BorderRadius.circular(1), // ubah nilai borderRadius
                  ),
                  child: Image.asset('assets/raka2.jpg'),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            child: const Text('MASUK'),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffee8301),
              minimumSize: const Size(240.0, 40.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
          ),
          const SizedBox(height: 10.0),
          // Tombol Register
          const Spacer(),
        ],
      ),
    );
  }
}