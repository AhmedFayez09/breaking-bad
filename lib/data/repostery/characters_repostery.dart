import 'package:flutter_application_3/data/models/characters.dart';
import 'package:flutter_application_3/data/web_servese/characters_web_services.dart';
import '../models/quotes.dart';

class CharactersRepository{

final  CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

Future<List<Character>> getAllCharacters() async {

  final characters =await charactersWebServices.getAllCharacters();
  return characters.map((character) => Character.fromJson(character)).toList();
}

Future<List<Quote>> getCharacterQuotes(String charName) async {

  final quotes =await charactersWebServices.getCharacterQuotes(charName);
  return quotes.map((charQuotes) => Quote.fromJson(charQuotes)).toList();
}

}