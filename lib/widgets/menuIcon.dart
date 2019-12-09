import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final String name;
  final String image;
  final BuildContext ctx;
  final StatefulWidget screen;

  MenuIcon(this.name, this.image, this.ctx, this.screen);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Card(
          color: Theme.of(context).iconTheme.color,
//          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
