// import 'package:asiah_app/app/routes/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


//  void main() {
//    runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//   return GetMaterialApp(
//     // home: HomePage(),
//     getPages: AppPages.routes,
//     initialRoute:AppPages.INITIAL ,
//   );  
//  }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//     appBar: AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       title: Text(
//         "",
//         style: TextStyle(color: Colors.white),
//       ),
//       centerTitle: true,
//       leading: IconButton(
//       onPressed: () {}, 
//       icon: Icon(Icons.menu_rounded),
//       color: Colors.white,
//       )
//     ),
//     body: Stack(
//       children: [
//         Center(
//           child: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 1, 191, 253),
//                   Color.fromARGB(255, 60, 126, 248)
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 stops: [0.0, 0.5],
//                 tileMode: TileMode.clamp,
//                 )
//             ),
//           )
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             currentWeather("Cyberjaya", Icons.wb_sunny_rounded, "26", "Cloudy", "AQI 28"),

//             Divider(),
//             SizedBox(
//               height: 20,
//             ),
            
//             Text(
//               'Additional Infromation',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.white
//               ),
//             ),
    
//             additionalInformation("88", "1010", "26", "40"),
//           ],
          
//         )
//       ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Beruang",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
