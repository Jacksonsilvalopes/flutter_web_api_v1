import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webapi_first_course/services/journal_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen/home_screen.dart';


void main() {


  runApp(DevicePreview(builder: (context) {
    return const MyApp();
  }));

  JournalService service = JournalService();
  service.register("Testando a api");

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,

      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),

      title: 'Simple Journal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
          appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.black,
              titleTextStyle: TextStyle(color: Colors.white, )),
        textTheme:GoogleFonts.montserratTextTheme(),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      initialRoute: "home",
      routes: {
        "home": (context) => const HomeScreen(),
      },
    );
  }
}
