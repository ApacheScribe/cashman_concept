import 'package:cashman/const/color_constant.dart';
import 'package:cashman/data/models/operation_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Operations extends StatefulWidget {
  const Operations({Key? key}) : super(key: key);

  @override
  _OperationsState createState() => _OperationsState();
}

class _OperationsState extends State<Operations> {
  @override
  Widget build(BuildContext context) {
    int current = 0;

    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 13, top: 29, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Operations",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: kBlackColor,
                ),
              ),
              Row(
                children: map<Widget>(datas, (index, selected) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    height: 9,
                    width: 9,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: current == index ? kBlueColor : kTwentyBlueColor,
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        Container(
          height: 123,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: datas.length,
            padding: EdgeInsets.only(left: 16),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: OperationCard(
                  operation: datas[index].name,
                  selectedIcon: datas[index].selectedIcon,
                  unselectedIcon: datas[index].unselectedIcon,
                  isSelected: current == index,
                  context: this,
                ),
                onTap: () {
                  // TODO: UPDATE STATE TO SET SELECTED
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class OperationCard extends StatefulWidget {
  final String operation;
  final bool isSelected;
  final String selectedIcon;
  final String unselectedIcon;
  final _OperationsState context;

  OperationCard({
    required this.operation,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.isSelected,
    required this.context,
  });

  @override
  _OperationCardState createState() => _OperationCardState();
}

class _OperationCardState extends State<OperationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 123,
      height: 123,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kTenBlackColor,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(8, 8),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: widget.isSelected ? kBlueColor : kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
              widget.isSelected ? widget.selectedIcon : widget.unselectedIcon),
          SizedBox(height: 13),
          Text(
            widget.operation,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: widget.isSelected ? kWhiteColor : kBlueColor,
            ),
          )
        ],
      ),
    );
  }
}
