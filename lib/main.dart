import 'package:flutter/material.dart'; //perintah untuk mengimport library material dart bawaan dari flutter
import 'Page2.dart';

void main() { //fungsi main adalah fungsi yang pertama kali dijalankan oleh Flutter
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home(),
  )); 
}


class home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Belajar Flutter', //perintah untuk memberikan judul pada aplikasi kalian
//       home:Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           leading: Icon(Icons.home),
//           title: Text('Belajar Flutter'), 
//         ),
// body:Center(
//             child: Card(
//               elevation: 3,
//               child: Image.asset("assets/images/.jpg",
//               width: 150,
//               height: 150,
//               ),
//             )
//             )
//       ),
        
//       );
//   }
const home({Key?key}) : super(key:key);

@override
Widget build( BuildContext context ) {
  return Scaffold(
    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpeg"),
            fit: BoxFit.cover
          )
      ),
      child: Stack(
         alignment: Alignment.center ,
         children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.shortestSide,  
           padding:EdgeInsets.all(20.0),
           alignment: Alignment.center,
           child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
            color: Color.fromARGB(255, 149, 109, 22).withOpacity(0.7),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('assets/images/fto.jpg'),
                  ),
                  Text("Servasius Vencel",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  ),

                  Text("Full-Stack Developer",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  TextButton(
                  onPressed: () {
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                  );
               },
              child: Text('See More'),
              style: TextButton.styleFrom(
              primary: Color.fromARGB(255, 0, 0, 0), // Mengubah warna teks menjadi biru
            ),
            ),

                ],
              ),
            ),
           ),
    )
  ]
)
    )
  );
}



}

