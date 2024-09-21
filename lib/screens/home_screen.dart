import 'package:flutter/material.dart';
import 'package:gamestar/widgets/elevated_button.dart';
import 'package:gamestar/widgets/process_indicator.dart';

class HomeScreen extends StatelessWidget {

   const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:16,bottom:60,left: 16,right: 16),
        child: Stack(
          children: [
            Align(alignment: Alignment.topRight,
            child:Padding(
              padding: const EdgeInsets.only(top:10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                Flexible(
                  child: TextButtonCustom(
                   buttonBackGroundColor:const Color(0xFFD3D3D3),
                    indicatorColor: const Color(0xFF797979),
                    buttonText:"123345",
                    buttonTextColor:const Color(0xFF131417),
                    imagePath:'assets/coin1.png',
                    onPressed: (){},
                  ),
                ),
                const SizedBox(width:5),
                    Flexible(
                      child: TextButtonCustom(
                        buttonBackGroundColor:const Color(0xFF797979),
                        indicatorColor: const Color(0xFFD3D3D3),
                        buttonText:"123345",
                        buttonTextColor: const Color(0xFFD3D3D3),
                        imagePath:'assets/coin2.png',
                        onPressed: (){},
                      ),
                    ),
              ]),
            ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              //Container One
                Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF131417)
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                          height:40,width:50,
                          child: Image.asset('assets/circling_star.png',fit:BoxFit.fill)),
                      const Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mining Speed ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '20/h ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                             Text(
                              'The speed  will increases according to the task',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 8),
                //Container 2
                Container(
                  padding: const EdgeInsets.all(5),
                  //alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF131417)
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                          height:40,width:50,
                          child: Image.asset('assets/shop_icon.png',height:30,width: 30,)),
                      const Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Shop ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'can purchase mining speed and mint gamestar tokens',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                const Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16),
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(100),
                     boxShadow: const [
                       BoxShadow(
                         color: Colors.amber,
                         spreadRadius: 10,
                         blurRadius: 80,
                         offset: Offset(4,4)

                       ),
                     ]),
                   child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    child:Image.asset('assets/my_coin.gif',fit: BoxFit.contain,)
                               ),
                 ),
                const SizedBox(height: 16),
                const Text(
                  '10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedCustom(
                  buttonText: "Start Mining",
                  onPressed: (){},
                  buttonClicked: false,
                  indicatorColor:const Color(0xFFD3d3d3),
                ),
              ],
                  ),
          ],
        ),
    );
  }
}
