// /*
// import 'package:flutter/material.dart';
//
// class ActionChipWidgets extends StatelessWidget {
//   const ActionChipWidgets({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightBlueAccent,
//           automaticallyImplyLeading: false,
//           title: Row(
//             children: [
//               GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                     Navigator.pop(context);
//                   },
//                   child: Text("Home" , style: TextStyle(color: Colors.white),)),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(">",style: TextStyle(color: Colors.white)),
//               ),
//               GestureDetector(onTap: () {
//                 Navigator.pop(context);
//               },child: Text("Chip",style: TextStyle(color: Colors.white))),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(">" , style: TextStyle(color: Colors.white)),
//               ),
//               Text("Action Chip" ,style: TextStyle(color: Colors.white)),
//             ],
//           ),
//         ),
//         body: ActionChipExample(),
//       ),
//     );
//   }
// }
//
// class ActionChipExample extends StatefulWidget {
//   const ActionChipExample({super.key});
//
//   @override
//   State<ActionChipExample> createState() => _ActionChipExampleState();
// }
// class _ActionChipExampleState extends State<ActionChipExample> {
//   bool favorite = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlueAccent,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.pop(context);
//                 },
//                 child: Text("Home" , style: TextStyle(color: Colors.white),)),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(">",style: TextStyle(color: Colors.white)),
//             ),
//             GestureDetector(onTap: () {
//               Navigator.pop(context);
//             },child: Text("Slider",style: TextStyle(color: Colors.white))),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(">" , style: TextStyle(color: Colors.white)),
//             ),
//             Text("Material Slider" ,style: TextStyle(color: Colors.white)),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text("ActionChip"),
//             ),
//             ActionChip(
//               avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border),
//               label: const Text('Save to favorites'),
//               onPressed: () {
//                 setState(() {
//                   favorite = !favorite;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// */
