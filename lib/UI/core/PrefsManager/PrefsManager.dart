import 'package:islamiiapp/Models/suraModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../resources/routesManger/Constant_Manager.dart';

class prefsManager {
  static void saveSuraindex(int suraindex) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> recentList = prefs.getStringList(CacheConstant.mostRecentSurasKey) ?? [];
    recentList = recentList.toSet().toList();
    recentList.remove("$suraindex");
    recentList.add("$suraindex");
    prefs.setStringList(CacheConstant.mostRecentSurasKey, recentList);
  }
  static Future<List<SuraModel>> getMostRecentSuras() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> suraIndexes = prefs.getStringList(CacheConstant.mostRecentSurasKey) ?? [];

    List<SuraModel> recentSuras = [];
    for (String indexStr in suraIndexes) {
      int index = int.parse(indexStr);
      recentSuras.add(SuraModel.suras[index]);
    }
    return recentSuras.reversed.toList();
  }
}
