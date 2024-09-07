// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  final String lable;
  const SongCard({super.key, required this.image, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image(
          image: image,
          width: 140,
          height: 140,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            lable,
            style: GoogleFonts.josefinSans(fontSize: 15),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        )
      ],
    ));
  }
}
