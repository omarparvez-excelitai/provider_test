
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/second_page.dart';

import 'data_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Consumer<DataClass>(builder: (context, data, child){
                    return Text('${data.x}', style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                    ),);
                  }),
                  Spacer(),
                  Text("Total", style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 40),)
                ],
              ),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [

                  GestureDetector(child: Container(
                    width: 60,
                    height: 60,
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        border: Border.all(
                            color: Color(0xFF716f72),
                            width: 1
                        )
                    ),
                  ),
                    onTap: (){
                      if(Provider.of<DataClass>(context, listen: false).x>=5){
                        Get.snackbar("Item", "Can not more than this",
                            backgroundColor: Colors.black,
                            colorText: Colors.white,
                            titleText:const Text(
                              "Item",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white
                              ),
                            ),
                            messageText:const  Text(
                              "Can not be more than this",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            )
                        );
                      }else{

                      context.read<DataClass>().x++;
                      //  context.read<DataClass>().incrementX();
                      }
                    },),
                  Spacer(),
                  Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        color: Colors.black
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(

                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  SecondPage()),
                                );
                                // Get.to(()=>SecondPage(), transition: Transition.upToDown, duration: Duration(seconds: 1));
                              },
                              child: Text("Next Page", style: TextStyle(fontSize: 20, color: Colors.white),)),
                          Spacer(),
                          Icon(Icons.skip_next, color:Colors.white)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ]
      ),
    );
  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(
//         title: Text("Provider Demo"),
//       ),
//       body: Center(
//         child: GestureDetector(
//
//           child: Center(
//             child: Container(
//               height: 70,
//               padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
//               margin: const EdgeInsets.only(left: 40, right: 40),
//               child: const Center(
//                 child: Text("Home page", style: TextStyle(
//                   fontSize: 20,
//                   color: Color(0xFF74beef),
//                 ),),
//               ),
//               decoration: BoxDecoration(
//                   color: Colors.grey[300],
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.grey,
//                       offset: Offset(4, 4),
//                       blurRadius: 15,
//                       spreadRadius: 1,
//                     ),
//                     BoxShadow(
//                       color: Colors.white,
//                       offset: Offset(-4, -4),
//                       blurRadius: 15,
//                       spreadRadius: 1,
//                     ),
//
//                   ]
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }