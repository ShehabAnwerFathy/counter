import 'package:counter/controller/assets/flares.dart';
import 'package:counter/controller/assets/images.dart';
import 'package:counter/controller/assets/fonts.dart';
import 'package:counter/controller/assets/lang.dart';

abstract class Assets {
  const Assets();

  static const AppImages images = AppImages();
  static const AppFlares flares = AppFlares();
  static const AppFonts fonts = AppFonts();
  static const AppLanguages languages = AppLanguages();
}
