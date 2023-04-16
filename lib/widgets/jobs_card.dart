import 'package:flutter/material.dart';
import 'package:future_provider/pages/categorieshome_page.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  JobCard({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeCategoryPage(
              jobTittleHome: name,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 150,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 15,
              right: 10,
            ),
            child: Text(
              name,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
