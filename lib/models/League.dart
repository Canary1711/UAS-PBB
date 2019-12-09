import 'package:flutter/material.dart';
import '../screens/leagueScreen.dart';

class League extends StatefulWidget {
  String leagueName;
  String leagueCode;
  Color leagueColor;

  League(this.leagueName, this.leagueCode, this.leagueColor);

  createState() => LeagueScreen(leagueName, leagueCode, leagueColor);
}
