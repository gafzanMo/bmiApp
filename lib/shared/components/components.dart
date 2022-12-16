import 'package:flutter/material.dart';


Widget defaultBoxGender({
  double radius = 10.0,
  required Color color,
  required String imagepath,
  double imageheight = 45.0,
  double imagewidth= 45.0,
  Color imagecolor = Colors.white,
  required String text,

}){
  return Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: color,
  ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
            image: AssetImage(
              imagepath
            ),
          height: imageheight,
          width: imagewidth,
          color: imagecolor,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white30,
              fontSize: 15.0
          ),
        )
      ],
    ),

  );
}



Color _color = const Color.fromRGBO(14, 20, 35,1);

Widget defaultBoxWA({
  double radius = 10,
  required String text,
  required double value,
  required VoidCallback FABfunction1,
  required VoidCallback FABfunction2,
  required IconData icon1,
  required IconData icon2,

}){
   return Container (
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(radius),
       color: _color ,
     ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
          Text(
           text.toUpperCase(),
           style: const TextStyle(
               color: Colors.white30,
               fontSize: 15.0
           ),
         ),
         Text(
           '${value}',
           style: const TextStyle(
               color: Colors.white,
               fontSize: 30.0,
               fontWeight: FontWeight.w900
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             FloatingActionButton(
               onPressed: FABfunction1,
               backgroundColor: const Color.fromRGBO(64, 70, 82,1),
               child: Icon(
                   icon1
               ),
             ),
             const SizedBox(
               width: 9.0,
             ),
             FloatingActionButton(
               onPressed: FABfunction2,
               backgroundColor: const Color.fromRGBO(64, 70, 82,1),
               child: Icon(
                   icon2
               ),
             ),
           ],
         )
       ],
     ),
   );
}