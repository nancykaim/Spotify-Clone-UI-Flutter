// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zpottyfi/views/albumview.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function() onTap;
  const AlbumCard(
      {super.key,
      required this.image,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: image,
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: GoogleFonts.josefinSans(),
            ),
          ),
        ],
      ),
    );
  }
}
