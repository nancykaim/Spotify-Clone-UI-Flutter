// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zpottyfi/navigators/song_card.dart';
import 'package:zpottyfi/views/albumview.dart';

import '../navigators/album_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.black.withOpacity(0)
                  ]),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recently Played",
                              style: GoogleFonts.secularOne(fontSize: 20)),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.history),
                              Icon(Icons.settings)
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            AlbumCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                                label: "Chase Atlantic",
                                image: AssetImage("lib/img/ca2.jpg")),
                            SizedBox(
                              width: 20,
                            ),
                            AlbumCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                                label: "Indigo",
                                image: AssetImage("lib/img/rm.jpg")),
                            SizedBox(
                              width: 20,
                            ),
                            AlbumCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                                label: "Born Pink",
                                image: AssetImage("lib/img/bp2.jpg")),
                            SizedBox(
                              width: 20,
                            ),
                            AlbumCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                                label: "Mignight Rain",
                                image: AssetImage("lib/img/t1.jpg")),
                            SizedBox(
                              width: 20,
                            ),
                            AlbumCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                                label: "Solo",
                                image: AssetImage("lib/img/bp1.jpg")),
                            SizedBox(
                              width: 20,
                            ),
                            AlbumCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                                label: "Riha",
                                image: AssetImage("lib/img/riha.jpg")),
                            SizedBox(
                              width: 20,
                            ),
                            AlbumCard(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AlbumView()));
                                },
                                label: "MOTS:7",
                                image: AssetImage("lib/img/b1.jpg")),
                          ],
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Good Evening",
                            style: GoogleFonts.secularOne(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: const [
                            RowAlbumCard(
                              label: "Global 50",
                              image: AssetImage("lib/img/g1.jpg"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RowAlbumCard(
                              label: "Viral hits",
                              image: AssetImage("lib/img/v1.jpg"),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            RowAlbumCard(
                              label: "Kpop'ed",
                              image: AssetImage("lib/img/kpop.png"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RowAlbumCard(
                              label: "Pop Sauce",
                              image: AssetImage("lib/img/s.png"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            RowAlbumCard(
                              label: "Desi Hits",
                              image: AssetImage("lib/img/z1.png"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RowAlbumCard(
                              label: "Today's Top",
                              image: AssetImage("lib/img/z2.png"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Based on your recent plays..",
                            style: GoogleFonts.secularOne(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            children: const [
                              SongCard(
                                image: AssetImage("lib/img/d1.png"),
                                lable: ("BTS,Ariana,Drake..."),
                              ),
                              SizedBox(
                                width: 20,
                                height: 20,
                              ),
                              SongCard(
                                  image: AssetImage("lib/img/d2.png"),
                                  lable: ("Taylor Swift,Selena,Camilla..")),
                              SizedBox(
                                width: 20,
                                height: 20,
                              ),
                              SongCard(
                                  image: AssetImage("lib/img/d4.png"),
                                  lable: ("RM,Bad Bunny,Lady Ga...")),
                              SizedBox(
                                width: 20,
                                height: 20,
                              ),
                            ],
                          )),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;

  const RowAlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(68, 102, 98, 98),
            borderRadius: BorderRadiusDirectional.circular(8)),
        clipBehavior: Clip.antiAlias,
        child: Row(children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Image(
              image: image,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Text(label, style: GoogleFonts.josefinSans()),
        ]),
      ),
    );
  }
}
