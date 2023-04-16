import 'package:flutter/material.dart';
import 'package:future_provider/pages/detailpageapplied.dart';
import 'package:future_provider/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget applyButtom() {
      return Center(
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff4141A4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66),
              ),
            ),
            onPressed: () {
              setState(() {
                isApplied = true;
              });
            },
            child: Text(
              'Apply for Job',
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    Widget cancelApplyButtom() {
      return Center(
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 251, 0, 209),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66),
              ),
            ),
            onPressed: () {
              setState(() {
                isApplied = false;
              });

              // // Navigator.push(
              // //   context,
              // //   MaterialPageRoute(
              // //     builder: (context) => DetailPageApplied(),
              // //   ),
              // );
            },
            child: Text(
              'Cancel Apply for Job',
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    Widget successApplied() {
      return Container(
        padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          'You have applied this job and the\n recruiter will contact you',
          style: GoogleFonts.poppins(
              color: Color(0xffA2A6B4),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              isApplied
                  ? successApplied()
                  : SizedBox(
                      height: 80,
                    ),
              Image.asset(
                'assets/images/icon_google.png',
                width: 60,
                height: 60,
              ),
              SizedBox(height: 20),
              Text(
                'Front End Developer',
                style: JobApplyTextStyle,
              ),
              Text(
                'Google, Inc * Jakarta',
                style: companyTextStyle,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the job',
                      style: titleRequirements,
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Full-Time On Series',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Start at \$18,000 per month',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qualifications',
                          style: titleRequirements,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Candidate must possess at least a Bachelor',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Able to use Microsoft Office and Google \nbased service.',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Have an excellent time management, \ngood at organized and details',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Responsibilities',
                          style: titleRequirements,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Initiate and promote any programs, events, \ntraining, or activities.',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Assessing and anticipating needs and \ncollaborate with Division.',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    isApplied ? cancelApplyButtom() : applyButtom(),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Message Recruiter',
                        style: companyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
