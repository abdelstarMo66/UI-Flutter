import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/sign_in_up2/sign_in_up.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'applocalizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [
        Locale("en"),
        Locale("ar"),
        Locale("de"),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (currentLocale,supportLocale){
        for(var locale in supportLocale){
          if(currentLocale != null && currentLocale.languageCode == locale.languageCode){
            return currentLocale;
          }
        }
        return supportLocale.first;
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backwardsCompatibility: false
        ),
      ),
      home: SignInUpScreen(),
    );
  }
}
