
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:platform_convertor/homescreen.dart';
import 'package:platform_convertor/switch_provider.dart';
import 'package:platform_convertor/test/testone.dart';
import 'package:provider/provider.dart';


Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      DevicePreview(builder: (context) => MyApp(),)
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SwitchProvider(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}