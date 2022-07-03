import 'package:flutter/material.dart';
import 'package:flutter_application_3/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_application_3/constans/strings.dart';
import 'package:flutter_application_3/data/models/characters.dart';
import 'package:flutter_application_3/data/repostery/characters_repostery.dart';
import 'package:flutter_application_3/data/web_servese/characters_web_services.dart';
import 'package:flutter_application_3/presentation/screens/characters_screen.dart';
import 'package:flutter_application_3/presentation/screens/characters_details_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/models/characters.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen: //CharactersScreen()
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                // CharactersCubit(charactersRepository),
                charactersCubit,
            child: CharactersScreen(),
          ),
        );

      case charactersDetailsScreen:
        final character = settings.arguments as Character;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                CharactersCubit(charactersRepository),
            child: CharacterDetailsScreen(
              character: character,
            ),
          ),
        );
    }
  } //CharacterDetailsScreen
}
