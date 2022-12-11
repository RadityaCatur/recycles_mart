import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
          child: Column(
        children: [
          // LOGO
          Padding(
            padding: const EdgeInsets.only(
                left: 100.0, right: 100.0, bottom: 20.0, top: 120.0),
            child: Image.asset('lib/images/logo.png'),
          ),

          // MOTTO
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Recycles Mart",
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(
                  fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),

          // MOTTO 2
          const Text(
            "High Quality Recycable Products",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 24),

          const Spacer(),

          // BUTTON MASUK KE APLIKASI
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const IntroPage();
                },
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 129, 162, 105),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text("Enter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  )),
            ),
          ),

          const Spacer(),
        ],
      )),
    );
  }
}
