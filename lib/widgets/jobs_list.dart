import 'package:flutter/material.dart';
import 'package:future_provider/pages/detail_page.dart';
import 'package:future_provider/theme.dart';

class JobList extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;
  final String companyTitle;

  JobList({
    required this.jobTitle,
    required this.companyTitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: jobTextStyle,
                ),
                Text(
                  companyTitle,
                  style: companyTextStyle,
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(
                  color: Color(0xffECEDF1),
                  thickness: 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
