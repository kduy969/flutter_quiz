import 'package:flutter/material.dart';

class PokemonInfo extends StatelessWidget {
  const PokemonInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      margin: EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.all(
          20,
        ),
        child: Column(
          children: <Widget>[
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
