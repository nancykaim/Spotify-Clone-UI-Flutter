import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  ScrollController? scrollController;
  double initialSize = 240;
  double imageSize = 0;
  double containerHeight = 500;
  @override
  void initState() {
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize;
        // ignore: avoid_print
        print(imageSize);
        imageSize = 140 - scrollController!.offset;
        if (imageSize > 0 && imageSize < 140) {
          setState(() {});
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: containerHeight,
          color: const Color.fromARGB(255, 26, 4, 61),
          child: Center(
            child: Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(0, 26),
                  blurRadius: 32,
                  spreadRadius: 16,
                )
              ]),
              child: Image(
                  image: const AssetImage("lib/img/b1.jpg"),
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SafeArea(
          child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    height: 450,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(1),
                        ])),
                    child: Column(
                      children: [
                        SizedBox(
                          height: imageSize + 90,
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text("This albums won the hearts of million",
                              style: GoogleFonts.josefinSans()),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: const [
                              Image(
                                  image: AssetImage("lib/img/logo.png"),
                                  width: 25,
                                  height: 25),
                              Text("   Spotify")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text("30,989,234 likes"),
                              SizedBox(
                                width: 18,
                              ),
                              Icon(Icons.favorite),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.more_horiz),
                              SizedBox(
                                width: 80,
                              ),
                              Icon(
                                Icons.play_circle,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 450,
                    ),
                    child: Container(
                      color: Colors.black,
                      height: 400,
                    ),
                  )
                ],
              )),
        )
      ],
    ));
  }
}
