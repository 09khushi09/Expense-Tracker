import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 167, 205, 226),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized(); //imp to make the app work as intended after locking the phone to portrait.
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
     
  // ]).then((fn) {
    runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      //dark theme is to set dark mode wala theme.but to decide which theme will be used we can set another parameter called themeMode. (neeche use kara hai)
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.inverseSurface,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        //cardtheme helps to change theme , colors n all of card widgets.
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        //for buttons(elevated buttons), we dont have .copywith but a different approach as shown below)-->
        //elevatedbuttontheme is used to apply theming to all the elevated buttons in the app.
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              //titlerge allows us to change the text style of all the titles in app.
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      //the foreground colour of title of the app did not really change though coz we have already use appbar theme to set foreground color of the appbar ka title
      //but  when this texttheme will b applied anywhere else like we did in expense item ka title, there we will see changes in color acc to this texttheme.
      //this textTheme applies changes to only the main title of app for ex flutter expense tracker tite written at top of app bcoz that text is of type titleLarge. but this same theme can also be manually applied to any text as done to the expense item wale title pe.
      // themeMode: ThemeMode.system,
      //acc to the system mode applied by the user from settings, theme of app also changes.(though this is default so we dont really need to use this code.)
      home: const Expenses(),
    ),
  );

  // });
  
}
