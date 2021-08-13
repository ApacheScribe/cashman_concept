import 'package:cashman/ui/frag/cards_view.dart';
import 'package:cashman/ui/frag/greeting.dart';
import 'package:cashman/ui/frag/operations.dart';
import 'package:cashman/ui/frag/top_bar.dart';
import 'package:cashman/ui/frag/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({String? title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              TopBar(),
              SizedBox(height: 10),
              Greeting(),
              CardsView(),
              Operations(),
              Transactions()
            ],
          ),
        ),
      ),
    );
  }
}
