import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcart/models/watch.dart';
import 'package:watchcart/themes/colors.dart';

class WatchDetails extends StatefulWidget {
  final Watch watch;
  const WatchDetails({super.key, required this.watch});

  @override
  State<WatchDetails> createState() => _WatchDetailsState();
}

class _WatchDetailsState extends State<WatchDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                widget.watch.imagePath,
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              Container(
                height: 260,
                width: 343,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF575757), Color(0xFF000000)],
                    begin: Alignment.topLeft,
                    end: Alignment(0.5, 3),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.watch.name,
                        style: GoogleFonts.cinzel(
                          color: secondaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(widget.watch.subTitle,
                          style: GoogleFonts.readexPro(
                              color: Colors.white, fontSize: 14)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.watch.description,
                        style: GoogleFonts.readexPro(
                            color: Colors.white, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price ${widget.watch.price}',
                            style: GoogleFonts.cinzel(
                                color: secondaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: secondaryColor),
                            child: Text(
                              'ADD TO CART',
                              style: GoogleFonts.cinzel(
                                  fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
