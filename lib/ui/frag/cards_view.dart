import 'package:cashman/const/color_constant.dart';
import 'package:cashman/data/models/card_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardsView extends StatefulWidget {
  CardsView({Key? key}) : super(key: key);

  @override
  _CardsViewState createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16, right: 6),
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            height: 199,
            width: 344,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: Color(
                cards[index].cardBackground,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: SvgPicture.asset(cards[index].cardElementTop),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset(cards[index].cardElementBottom),
                ),
                Positioned(
                  left: 29,
                  top: 48,
                  child: Text(
                    "Card Number",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                Positioned(
                  left: 29,
                  top: 65,
                  child: Text(
                    cards[index].cardNumber,
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                Positioned(
                  right: 21,
                  top: 15,
                  child: Image.asset(
                    cards[index].cardType,
                    width: 27,
                    height: 27,
                  ),
                ),
                Positioned(
                  left: 29,
                  bottom: 45,
                  child: Text(
                    "Card Holder",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kWhiteColor),
                  ),
                ),
                Positioned(
                  left: 29,
                  bottom: 21,
                  child: Text(
                    cards[index].user,
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor),
                  ),
                ),
                Positioned(
                  left: 202,
                  bottom: 45,
                  child: Text(
                    "Expiry Date",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kWhiteColor),
                  ),
                ),
                Positioned(
                  left: 202,
                  bottom: 21,
                  child: Text(
                    cards[index].cardExpired,
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
