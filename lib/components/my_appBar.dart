import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;
  MyAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10, top: 30, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(title, style: GoogleFonts.bebasNeue(fontSize: 40)),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              // color: Colors.grey[400],
              child: const Icon(
                Icons.search,
              ),
            ),
          )
        ],
      ),
    );
  }
}
