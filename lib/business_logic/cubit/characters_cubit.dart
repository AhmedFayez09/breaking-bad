import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/data/models/characters.dart';
import 'package:flutter_application_3/data/models/quotes.dart';
import 'package:flutter_application_3/data/repostery/characters_repostery.dart';


part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {

final CharactersRepository charactersRepository;
  List<Characters> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

List<Characters> getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters) {
          emit(CharactersLoaded(characters));
          this.characters = characters.cast<Characters>();
    });

    return characters;
}

void getQuotes(String charName){
    charactersRepository.getCharacterQuotes(charName).then((quotes) {
          emit(QuotesLoaded(quotes));
          
    });

   
}
}
