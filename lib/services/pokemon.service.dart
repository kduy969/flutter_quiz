import 'package:dio/dio.dart';
import 'package:quiz/log/index.dart';
import 'package:quiz/models/Pokemon.dart';
import 'package:quiz/test/pokemon_entity.dart';

class PokemonService {
  late final Dio _dio;
  PokemonService() {
    _dio = Dio(BaseOptions(baseUrl: 'https://pokeapi.co/api/v2'));
  }

  Future<PokemonEntity> getPokemon(String name) async {
    try {
      final response = await _dio.get('/pokemon/$name');
      return PokemonEntity.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
