import 'package:amazon/constants/global_variables.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon',
      debugShowCheckedModeBanner: false,
      // theme data 
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        elevatedButtonTheme: ElevatedButtonThemeData(

          // 
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(GlobalVariables.secondaryColor),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), 
      ),
    ),
  ),
),
// 
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: GlobalVariables.secondaryColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Hello'),
            ),
            ElevatedButton(onPressed: (){}, child: const Text('click'))
          ],
        ),
      
      ),
    );
  }
}
