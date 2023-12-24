import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcart/models/watch.dart';
import 'package:watchcart/themes/colors.dart';

class WatchTile extends StatelessWidget {
  final Watch watch;
  final void Function()? onTap;
  const WatchTile({Key? key, required this.watch, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(10),
        decoration:  BoxDecoration(
          shape: BoxShape.rectangle,
          gradient: const LinearGradient(
            colors: [Color(0xFF575757), Color(0xFF000000)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(4.62),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(watch.imagePath,height: MediaQuery.of(context).size.height * 0.3,fit: BoxFit.cover,), // Adjust the height as needed
            Text(watch.name, style: GoogleFonts.playfairDisplay(color: secondaryColor,fontSize: 20,),textAlign: TextAlign.center,),
            Text(watch.price, style: GoogleFonts.playfairDisplay(color: secondaryColor,fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
