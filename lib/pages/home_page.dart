
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchcart/components/watchtile.dart';
import 'package:watchcart/models/watch.dart';
import 'package:watchcart/pages/product_details.dart';
import 'package:watchcart/themes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Watch> watches = [
    Watch(
        name: 'Perpetual 1908',
        description: 'Elegant, classic and decidedly contemporary, the Perpetual 1908 immortalizes Rolex’s age-long daring spirit. Inheriting the brand’s historic codes as much as its numerous innovations in watchmaking, the watch marks a new milestone in the brand’s pursuit of excellence.',
        subTitle: 'The new face of excellence',
        imagePath: 'assets/images/1908.png',
        price: '\$ 23810'),
    Watch(
        name: 'GMT-Master II',
        description: 'Allowing its wearer to track the progress of time in another time zone, the GMT‑Master II highlights our connection to the world. It is now available in two new versions – 18 ct yellow gold and yellow Rolesor – with a Cerachrom bezel insert in grey and black ceramic, an entirely new colour combination.',
        subTitle: 'Highlighting our connection to the world',
        imagePath: 'assets/images/GMT-Master-II.png',
        price: '\$ 16500'),
    Watch(
        name: 'Sky Dweller',
        description: 'With its two time zones and its annual calendar, the Sky-Dweller is an elegant and trusted companion for world travellers. The range has been updated with numerous enhancements proving that, for Rolex, excellence plays out even in the tiniest details.',
        subTitle: 'To the ultimate and beyond',
        imagePath: 'assets/images/SkyDweller.png',
        price: '\$ 36000'),
  ];

  void navigateToDetails(int index){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> WatchDetails(watch: watches[index])));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/Vector.png',height: 40,),
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.menu,
          color: secondaryColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              Icons.search,
              color: secondaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: secondaryColor,
                thickness: 0.5,
              ),
              Center(child: Text('ROLEX WATCHES',style: GoogleFonts.cinzel(color: secondaryColor,fontSize: 22,
              fontWeight: FontWeight.bold),)),
              Divider(
                color: secondaryColor,
                thickness: 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    'The Collections',
                    style: GoogleFonts.readexPro(color: Colors.white, fontSize: 18),
                  ),
                  /*Text(
                    'See all',
                    style: GoogleFonts.readexPro(color: secondaryColor, fontSize: 16,),
                  ),*/
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 450,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: watches.length,
                  itemBuilder: (context, index) {
                    
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      margin: const EdgeInsets.only(right: 15),
                      child: WatchTile(watch: watches[index],
                      onTap: () => navigateToDetails(index),),
                      
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'New Watches 2023',
                style: GoogleFonts.readexPro(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 25),
              Row(
                
                children: [
                  Image.asset('assets/images/Fastrack-Analog-Black-Dial.png', height: 140),
                  const SizedBox(width: 25),
                  Column(
                    children: [
                      Text('Fastrack Casual Analog', style: GoogleFonts.cinzel(color: secondaryColor, fontSize: 16)),
                      Text('₹1516', style: GoogleFonts.cinzel(color: secondaryColor, fontSize: 16)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}