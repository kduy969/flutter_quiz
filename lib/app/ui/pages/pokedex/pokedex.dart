import 'package:flutter/material.dart';

import 'pokemon_info.dart';
import 'search_bar.dart';

class ScreenPokedex extends StatefulWidget {
  const ScreenPokedex({Key? key}) : super(key: key);

  @override
  _ScreenPokedexState createState() => _ScreenPokedexState();
}

class _ScreenPokedexState extends State<ScreenPokedex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('POKEDEX'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SearchBar(),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: PokemonInfo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
