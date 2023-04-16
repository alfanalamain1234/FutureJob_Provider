import 'package:flutter/material.dart';
import 'package:future_provider/theme.dart';
import 'package:future_provider/widgets/jobs_list.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/jobs_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Howdy',
                      style: titleTextStyle,
                    ),
                    Text(
                      'Json Powell',
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/images/image_profile.png',
                  width: 58,
                  height: 58,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
      return SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Hot Categories',
                  style: GoogleFonts.poppins(
                    color: Color(0xff272C2F),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                    ),
                    child: Row(
                      children: [
                        JobCard(
                          name: 'Web Developer',
                          imageUrl: 'assets/images/image_category1.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        JobCard(
                          name: 'Mobile Developer',
                          imageUrl: 'assets/images/image_category2.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        JobCard(
                          name: 'App Desainer',
                          imageUrl: 'assets/images/image_category3.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        JobCard(
                          name: 'Content Writer',
                          imageUrl: 'assets/images/image_category4.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        JobCard(
                          name: 'Video Grapher',
                          imageUrl: 'assets/images/image_category5.png',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Text(
                        'Just Posted',
                        style: GoogleFonts.poppins(
                          color: Color(0xff272C2F),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    top: 16,
                  ),
                  child: JobList(
                    jobTitle: "Front End Developer",
                    companyTitle: "Google",
                    imageUrl: 'assets/images/icon_google.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    top: 16,
                  ),
                  child: JobList(
                    jobTitle: 'UI Designer',
                    companyTitle: "Instagram",
                    imageUrl: 'assets/images/icon_instagram.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    top: 16,
                  ),
                  child: JobList(
                    jobTitle: 'Data Scientist',
                    companyTitle: "Facebook",
                    imageUrl: 'assets/images/icon_facebook.png',
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 24, top: 26),
                //   // child: Row(
                //   //   children: [
                //   //     Image.asset(
                //   //       'assets/images/icon_google.png',
                //   //       width: 45,
                //   //       height: 45,
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     Column(
                //   //       crossAxisAlignment: CrossAxisAlignment.start,
                //   //       children: [
                //   //         Text(
                //   //           'Front End Developer',
                //   //           style: jobTextStyle,
                //   //         ),
                //   //         Text(
                //   //           'Google',
                //   //           style: companyTextStyle,
                //   //         ),
                //   //       ],
                //   //     )
                //   //   ],
                //   // ),
                // )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_home.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_notification.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_love.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/icon_user.png',
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          body(),
        ],
      ),
    );
  }
}
