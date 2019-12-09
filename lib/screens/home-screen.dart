import 'package:flutter/material.dart';

import '../widgets/menuIcon.dart';
import '../models/League.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      title: Text('Football-Info'),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                  0.1,
              child: Text(
                'Live Score',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Container(
              height: (mediaQuery.size.height -
                      appBar.preferredSize.height -
                      mediaQuery.padding.top) *
                  0.9,
              color: Theme.of(context).backgroundColor,
              child: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  MenuIcon(
                      'Premier League',
                      'assets/images/pl.png',
                      context,
                      League('Premier League', 'PL',
                          Color.fromRGBO(63, 16, 82, 1))),
                  MenuIcon('La Liga', 'assets/images/laLiga.jpg', context,
                      League('La Liga', 'PD', Color.fromRGBO(0, 52, 114, 1))),
                  MenuIcon('Serie A', 'assets/images/serieA.jpg', context,
                      League('Serie A', 'SA', Color.fromRGBO(29, 150, 71, 1))),
                  MenuIcon(
                      'Bundesliga',
                      'assets/images/bundesliga.png',
                      context,
                      League(
                          'Bundesliga', 'BL1', Color.fromRGBO(177, 40, 41, 1))),
                  MenuIcon('Ligue 1', 'assets/images/ligue1.png', context,
                      League('Ligue 1', 'FL1', Color.fromRGBO(227, 76, 38, 1))),
                  MenuIcon(
                      'Série A',
                      'assets/images/ligue1.png',
                      context,
                      League('Liga Série A', 'BSA',
                          Color.fromRGBO(227, 76, 38, 1))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
