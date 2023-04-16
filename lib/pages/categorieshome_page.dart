import 'package:flutter/material.dart';
import 'package:future_provider/theme.dart';
import 'package:future_provider/widgets/jobs_list.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCategoryPage extends StatelessWidget {
  final String jobTittleHome;
  final String imageUrl;

  HomeCategoryPage({
    required this.jobTittleHome,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 170,
                        left: 24,
                      ),
                      child: Text(
                        jobTittleHome,
                        style: JobTitleTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 210,
                        left: 24,
                      ),
                      child: Text(
                        '12,309 available',
                        style: avaibleTextStyle,
                      ),
                    )
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      top: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Big Companies',
                          style: GoogleFonts.poppins(
                            color: Color(0xff272C2F),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 16,
                          ),
                          child: Column(
                            children: [
                              JobList(
                                jobTitle: 'Front-End Developer',
                                companyTitle: 'Google',
                                imageUrl: 'assets/images/icon_google.png',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 16,
                          ),
                          child: Column(
                            children: [
                              JobList(
                                jobTitle: 'UI Desaigner',
                                companyTitle: 'Instagram',
                                imageUrl: 'assets/images/icon_instagram.png',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 16,
                          ),
                          child: Column(
                            children: [
                              JobList(
                                jobTitle: 'Data Scientist',
                                companyTitle: 'Facebook',
                                imageUrl: 'assets/images/icon_facebook.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      top: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Startups',
                          style: GoogleFonts.poppins(
                            color: Color(0xff272C2F),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 16,
                          ),
                          child: Column(
                            children: [
                              JobList(
                                jobTitle: 'Front-End Developer',
                                companyTitle: 'Google',
                                imageUrl: 'assets/images/icon_google.png',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 16,
                          ),
                          child: Column(
                            children: [
                              JobList(
                                jobTitle: 'UI Desaigner',
                                companyTitle: 'Instagram',
                                imageUrl: 'assets/images/icon_instagram.png',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 16,
                          ),
                          child: Column(
                            children: [
                              JobList(
                                jobTitle: 'Data Scientist',
                                companyTitle: 'Facebook',
                                imageUrl: 'assets/images/icon_facebook.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
