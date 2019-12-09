import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

import '../models/Team.dart';

final String token = '782ed62cefb14d55b5eb4a99e48c88ab';

class TeamScreen extends StatelessWidget {
  final int id;
  final String name;
  TeamScreen(this.id, this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: FutureBuilder<team>(
          future: getSquad(id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  for (var item in snapshot.data.squad) squadList(item)
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Widget squadList([Squad squad]) {
  return SingleChildScrollView(
    child: Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text(squad.name),
          ),
          flex: 3,
        ),
        Expanded(
          child: Text(squad.role),
          flex: 1,
        ),
        Expanded(
          child: Text(squad.nationality),
          flex: 1,
        ),
      ],
    ),
  );
}

Future<team> getSquad(int id) async {
  Response r = await get(
      Uri.encodeFull('https://api.football-data.org/v2/teams/$id'),
      headers: {"X-Auth-Token": token});
  Map<String, dynamic> x = jsonDecode(r.body);
  return team.fromJson(json.decode(r.body));
}
