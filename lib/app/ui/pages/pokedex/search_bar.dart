import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quiz/app/services.dart';
import 'package:quiz/app/ui/organisms/popup/popup.dart';
import 'package:quiz/log/index.dart';
import 'package:quiz/test/pokemon_entity.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  PokemonEntity? pokemon;
  bool loading = false;
  double popupSize = 100;
  String text = '';
  late final GlobalKey<PopupState> popupKey;

  @override
  void initState() {
    // TODO: implement initState
    popupKey = GlobalKey<PopupState>();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onSearch() async {
    try {
      setState(() {
        loading = true;
      });
      pokemon = await Services.pokemon.getPokemon(text);
      logger.d(pokemon);
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 404) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Ops, pokemon not found!'),
          ));
        }
        logger.e(e.response?.statusCode);
      }
      logger.e(
        e,
      );
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void onTextChanged(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            popupSize += 10;
            popupKey.currentState?.rebuildOverlay();
          },
          child: Text('Toggle'),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: TextField(
            onChanged: onTextChanged,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 10,
          ),
          height: 50,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  }
                  return null; // Use the component's default.
                },
              ),
            ),
            onPressed: (loading || text.isEmpty) ? null : onSearch,
            child: Popup(
              key: popupKey,
              // position: PreferredPosition.bottom,
              // verticalMargin: 10,
              popupBuilder: () {
                return Text('TESTESTETET' + popupSize.toString());
              },
              //pressType: PressType.longPress,
              child: IndexedStack(
                index: loading ? 0 : 1,
                children: const [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
