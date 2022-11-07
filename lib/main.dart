// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_demo/home_page.dart';
//
// import 'data_class.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     //return ChangeNotifierProvider(create:(context)=>DataClass(),
//
//
//
//
//     return ChangeNotifierProvider(create: (context)=>DataClass(),
//       child: GetMaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           home: const HomePage()
//       ),);
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/sign_up.dart';


import 'data_class.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>DataClass()),

  ],
      child:const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider  Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProviderDemoScreen(),

      );
  }
}

class ProviderDemoScreen extends StatefulWidget {
  const ProviderDemoScreen({Key? key}) : super(key: key);

  @override
  _ProviderDemoScreenState createState() => _ProviderDemoScreenState();
}

class _ProviderDemoScreenState extends State<ProviderDemoScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SignUpPage()),

            );
          },
          child: Center(
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
             // margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Text("Go to SignUp Page", style: TextStyle(
                fontSize: 20,
                color: Color(0xFF74beef),
              ),),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),

                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}