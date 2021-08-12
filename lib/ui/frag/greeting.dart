import 'package:cashman/const/color_constant.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Greeting extends StatelessWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Good Morning,",
            style: GoogleFonts.inter(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: kBlackColor,
            ),
          ),
          Text(
            "FirstName LastName",
            style: GoogleFonts.inter(
                fontSize: 18, fontWeight: FontWeight.w500, color: kBlackColor),
          ),
        ],
      ),
    );
  }
}
