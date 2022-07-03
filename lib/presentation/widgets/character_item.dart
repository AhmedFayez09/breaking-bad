import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/constans/mycolors.dart';
import 'package:flutter_application_3/constans/strings.dart';
import 'package:flutter_application_3/data/models/characters.dart';

class CharacterItem extends StatelessWidget {

final Character character;



  const CharacterItem({Key? key,required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      // ignore: prefer_const_constructors
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.muWhite,
        borderRadius: BorderRadius.circular(8),

      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context, 
          charactersDetailsScreen,
          arguments: character),
        child: GridTile(
          // ignore: sort_child_properties_last
          child: Hero(
            tag: character.charId,
            child: Container(
              color: MyColors.myGrey,
              child: character.image.isNotEmpty ? 
              FadeInImage.assetNetwork(
                width: double.infinity,
                height:  double.infinity,
                placeholder:
                 'assets/images/lood.gif', 
                 image: character.image,
                 fit: BoxFit.cover,
                 ) : 
                 Image.asset("assets/images/yo.jpg",fit: BoxFit.cover,),
              ),
          ),
            footer: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text('${character.name}',
               style:const TextStyle(
                 height: 1.3,
                 fontSize: 16,
                 color: MyColors.muWhite,
                 fontWeight: FontWeight.bold,
               ),
               overflow: TextOverflow.ellipsis,
               maxLines: 2,
               textAlign: TextAlign.center,
               
               
               ),
              ),
            ),
      ),
    ); 
  }
}