import 'package:flutter/material.dart';
import '../models/League.dart';
import '../widgets/leagueStanding.dart';
import '../widgets/upcomingMatches.dart';
import '../widgets/topScorers.dart';

class LeagueScreen extends State<League> {
  String leagueName;
  String leagueCode;
  Color leagueColor;

  LeagueScreen(this.leagueName, this.leagueCode, this.leagueColor);
  Widget screenContent = Container();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text(leagueName),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Standings',
                  ),
                  Tab(
                    text: 'Matches',
                  ),
                  Tab(
                    text: 'Scorers',
                  )
                ],
              ),
              backgroundColor: leagueColor,
            ),
            body: Container(
              color: Theme.of(context).backgroundColor,
              child: TabBarView(
                children: <Widget>[
                  LeagueStanding(leagueCode, leagueName, leagueColor),
                  upcomingMatches(leagueCode, leagueColor),
                  topScorers(leagueCode, leagueColor)
                ],
              ),
            ),
          )),
    );
  }
}
