import 'package:cashman/const/color_constant.dart';
import 'package:cashman/data/models/transaction_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            bottom: 13,
            top: 29,
            right: 10,
          ),
          child: Text(
            "Transaction History",
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: kBlackColor,
            ),
          ),
        ),
        ListView.builder(
          itemCount: transactions.length,
          padding: EdgeInsets.only(left: 16, right: 16),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              height: 77,
              margin: EdgeInsets.only(bottom: 13),
              padding:
                  EdgeInsets.only(left: 24, top: 12, bottom: 12, right: 22),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: kTenBlackColor,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(8.0, 8.0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 57,
                        width: 57,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(transactions[index].photo),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            transactions[index].name,
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kBlackColor,
                            ),
                          ),
                          Text(
                            transactions[index].date,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    transactions[index].amount,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: kBlueColor,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
