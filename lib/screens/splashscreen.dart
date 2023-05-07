import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:utp/screens/welcomescreens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/coffee.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
                bottom: 50,
                left: 10,
                right: 10,
                child: Card(
                  color: Colors.black.withOpacity(0.3),
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Tak Kenal, Maka tak Sayang !",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Text(
                          "Mari Kawan ini Profil sederhana diriku didalamnya ada Data dan kontak ku jangan lupa disave ya!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 20, bottom: 32),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('assets/guabanget.png'),
                              
                              ),
                              SizedBox(width: 30),
                              ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WelcomeScreen()),
                    );
              },
              child: const Text('AYUK KEPOIN'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Color.fromARGB(255, 26, 174, 13),
                minimumSize: const Size(200.0, 40.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
                textStyle: GoogleFonts.poppins(fontSize: 14.0),
                side: const BorderSide(color: Color.fromARGB(255, 243, 242, 241)),
              ),
            ),
                    
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}