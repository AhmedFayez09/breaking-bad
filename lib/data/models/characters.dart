class Character {
 late int charId;
 late String name;
 late String nicname;
 late String image;
 late List<dynamic> jobs;
 late String statusIfDeadOrAlive;
 late List<dynamic> appearnceOfSeasons;
 late String acotrName;
 late String categoryForTowSeries;
 late List<dynamic> betterCallappearance;


Character.fromJson(Map<String,dynamic> json){

charId =json["char_id"];
name =json["name"];
nicname =json["nickname"];
image =json["img"];
jobs =json["occupation"];
statusIfDeadOrAlive =json["status"];
appearnceOfSeasons =json["appearance"];
acotrName =json["portrayed"];
categoryForTowSeries =json["category"];
betterCallappearance =json["better_call_saul_appearance"];







}




}