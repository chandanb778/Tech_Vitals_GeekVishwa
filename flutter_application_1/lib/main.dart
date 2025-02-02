// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[50],
//         fontFamily: 'Roboto',
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<Map<String, String>> familyMembers = [
//     {"name": "Dad", "role": "Father"},
//     {"name": "Mom", "role": "Mother"},
//     {"name": "User_001", "role": "Son"},
//     {"name": "Sarah", "role": "Daughter"},
//   ];
//   String? selectedMember;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.blue[700]!, Colors.blue[900]!],
//           ),
//         ),
//         child: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Card(
//                 elevation: 8,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(24.0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(
//                         Icons.family_restroom,
//                         size: 80,
//                         color: Colors.blue[700],
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "Family Fitness Hub",
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue[900],
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         "Select your profile to get personalized\nhealth recommendations",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.grey[600],
//                           fontSize: 14,
//                         ),
//                       ),
//                       SizedBox(height: 30),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[100],
//                           borderRadius: BorderRadius.circular(15),
//                           border: Border.all(color: Colors.blue[200]!),
//                         ),
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton<String>(
//                             hint: Text("Choose Family Member"),
//                             value: selectedMember,
//                             isExpanded: true,
//                             icon: Icon(Icons.arrow_drop_down_circle, color: Colors.blue[700]),
//                             items: familyMembers.map((member) {
//                               return DropdownMenuItem(
//                                 value: member["name"],
//                                 child: Row(
//                                   children: [
//                                     Icon(Icons.person, color: Colors.blue[700], size: 20),
//                                     SizedBox(width: 10),
//                                     Text(
//                                       "${member["name"]} (${member["role"]})",
//                                       style: TextStyle(color: Colors.black87),
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             }).toList(),
//                             onChanged: (value) {
//                               setState(() {
//                                 selectedMember = value;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 24),
//                       ElevatedButton(
//                         onPressed: selectedMember == null
//                             ? null
//                             : () {
//                                 // Navigate to the recommendation screen
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (_) => RecommendationScreen(userName: selectedMember!),
//                                   ),
//                                 );
//                               },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blue[700],
//                           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           elevation: 3,
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(Icons.fitness_center),
//                             SizedBox(width: 8),
//                             Text(
//                               "Get Recommendations",
//                               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // // This is a placeholder for the recommendation screen
// // class RecommendationScreen extends StatelessWidget {
// //   final String userName;
  
// //   const RecommendationScreen({Key? key, required this.userName}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("$userName's Recommendations"),
// //       ),
// //       body: Center(
// //         child: Text("Recommendations coming soon..."),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'anomaly_screen.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         scaffoldBackgroundColor: Colors.grey[50],
// //       ),
// //       home: HomePage(),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   // Generate user IDs in the format User_001, User_002, etc.
// //   List<String> users = List.generate(
// //     5,
// //     (index) => 'User_${(index + 1).toString().padLeft(3, '0')}',
// //   );
// //   String? selectedUser;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [Colors.blue[700]!, Colors.blue[900]!],
// //           ),
// //         ),
// //         child: SafeArea(
// //           child: Center(
// //             child: Padding(
// //               padding: const EdgeInsets.all(20.0),
// //               child: Card(
// //                 elevation: 8,
// //                 shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(24.0),
// //                   child: Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       Icon(
// //                         Icons.account_circle,
// //                         size: 80,
// //                         color: Colors.blue[700],
// //                       ),
// //                       SizedBox(height: 20),
// //                       Text(
// //                         "Health Analytics",
// //                         style: TextStyle(
// //                           fontSize: 24,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.blue[900],
// //                         ),
// //                       ),
// //                       SizedBox(height: 8),
// //                       Text(
// //                         "Select your user ID to view your\nhealth data and recommendations",
// //                         textAlign: TextAlign.center,
// //                         style: TextStyle(
// //                           color: Colors.grey[600],
// //                           fontSize: 14,
// //                         ),
// //                       ),
// //                       SizedBox(height: 30),
// //                       Container(
// //                         padding: EdgeInsets.symmetric(horizontal: 16),
// //                         decoration: BoxDecoration(
// //                           color: Colors.grey[100],
// //                           borderRadius: BorderRadius.circular(15),
// //                           border: Border.all(color: Colors.blue[200]!),
// //                         ),
// //                         child: DropdownButtonHideUnderline(
// //                           child: DropdownButton<String>(
// //                             hint: Text("Select User ID"),
// //                             value: selectedUser,
// //                             isExpanded: true,
// //                             icon: Icon(
// //                               Icons.arrow_drop_down_circle,
// //                               color: Colors.blue[700],
// //                             ),
// //                             items: users.map((user) {
// //                               return DropdownMenuItem(
// //                                 value: user,
// //                                 child: Row(
// //                                   children: [
// //                                     Icon(
// //                                       Icons.person_outline,
// //                                       color: Colors.blue[700],
// //                                       size: 20,
// //                                     ),
// //                                     SizedBox(width: 10),
// //                                     Text(
// //                                       user,
// //                                       style: TextStyle(
// //                                         color: Colors.black87,
// //                                         fontSize: 16,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               );
// //                             }).toList(),
// //                             onChanged: (value) {
// //                               setState(() {
// //                                 selectedUser = value;
// //                               });
// //                             },
// //                           ),
// //                         ),
// //                       ),
// //                       SizedBox(height: 24),
// //                       ElevatedButton(
// //                         onPressed: selectedUser == null
// //                             ? null
// //                             : () {
// //                                 Navigator.push(
// //                                   context,
// //                                   MaterialPageRoute(
// //                                     builder: (_) => AnomalyScreen(
// //                                       userId: selectedUser!,
// //                                     ),
// //                                   ),
// //                                 );
// //                               },
// //                         style: ElevatedButton.styleFrom(
// //                           backgroundColor: Colors.blue[700],
// //                           padding: EdgeInsets.symmetric(
// //                             horizontal: 40,
// //                             vertical: 16,
// //                           ),
// //                           shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(15),
// //                           ),
// //                           elevation: 3,
// //                         ),
// //                         child: Row(
// //                           mainAxisSize: MainAxisSize.min,
// //                           children: [
// //                             Icon(Icons.analytics_outlined),
// //                             SizedBox(width: 8),
// //                             Text(
// //                               "View Analytics",
// //                               style: TextStyle(
// //                                 fontSize: 16,
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
 

// // import 'package:flutter/material.dart';
// // import 'anomaly_screen.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         scaffoldBackgroundColor: Colors.black,
// //       ),
// //       home: HomePage(),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   List<String> users = List.generate(
// //     5,
// //     (index) => 'User_${(index + 1).toString().padLeft(3, '0')}',
// //   );
// //   String? selectedUser;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: NetworkImage(
// //               'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
// //             ),
// //             fit: BoxFit.cover,
// //             colorFilter: ColorFilter.mode(
// //               Colors.black.withOpacity(0.6),
// //               BlendMode.darken,
// //             ),
// //           ),
// //         ),
// //         child: SafeArea(
// //           child: Container(
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(
// //                 begin: Alignment.topCenter,
// //                 end: Alignment.bottomCenter,
// //                 colors: [
// //                   Colors.transparent,
// //                   Colors.black.withOpacity(0.7),
// //                   Colors.black.withOpacity(0.9),
// //                 ],
// //               ),
// //             ),
// //             child: Padding(
// //               padding: const EdgeInsets.all(20.0),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(vertical: 20.0),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         IconButton(
// //                           icon: Icon(Icons.arrow_back_ios, color: Colors.white),
// //                           onPressed: () {},
// //                         ),
// //                         IconButton(
// //                           icon: Icon(Icons.settings, color: Colors.white),
// //                           onPressed: () {},
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   Expanded(
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text(
// //                           "Form Analysis",
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 32,
// //                             fontWeight: FontWeight.bold,
// //                             letterSpacing: 1.2,
// //                           ),
// //                         ),
// //                         SizedBox(height: 20),
// //                         Container(
// //                           padding: EdgeInsets.symmetric(horizontal: 16),
// //                           decoration: BoxDecoration(
// //                             color: Colors.white.withOpacity(0.1),
// //                             borderRadius: BorderRadius.circular(15),
// //                             border: Border.all(color: Colors.white24),
// //                           ),
// //                           child: DropdownButtonHideUnderline(
// //                             child: DropdownButton<String>(
// //                               dropdownColor: Colors.black87,
// //                               hint: Text(
// //                                 "Select User ID",
// //                                 style: TextStyle(color: Colors.white70),
// //                               ),
// //                               value: selectedUser,
// //                               isExpanded: true,
// //                               icon: Icon(
// //                                 Icons.arrow_drop_down_circle,
// //                                 color: Colors.white70,
// //                               ),
// //                               items: users.map((user) {
// //                                 return DropdownMenuItem(
// //                                   value: user,
// //                                   child: Row(
// //                                     children: [
// //                                       Icon(
// //                                         Icons.person_outline,
// //                                         color: Colors.white70,
// //                                         size: 20,
// //                                       ),
// //                                       SizedBox(width: 10),
// //                                       Text(
// //                                         user,
// //                                         style: TextStyle(
// //                                           color: Colors.white,
// //                                           fontSize: 16,
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 );
// //                               }).toList(),
// //                               onChanged: (value) {
// //                                 setState(() {
// //                                   selectedUser = value;
// //                                 });
// //                               },
// //                             ),
// //                           ),
// //                         ),
// //                         SizedBox(height: 30),
// //                         Center(
// //                           child: Container(
// //                             width: 70,
// //                             height: 70,
// //                             decoration: BoxDecoration(
// //                               shape: BoxShape.circle,
// //                               color: Colors.white,
// //                             ),
// //                             child: IconButton(
// //                               icon: Icon(
// //                                 Icons.camera_alt,
// //                                 size: 32,
// //                                 color: Colors.black87,
// //                               ),
// //                               onPressed: () {
// //                                 if (selectedUser != null) {
// //                                   Navigator.push(
// //                                     context,
// //                                     MaterialPageRoute(
// //                                       builder: (_) => AnomalyScreen(
// //                                         userId: selectedUser!,
// //                                       ),
// //                                     ),
// //                                   );
// //                                 }
// //                               },
// //                             ),
// //                           ),
// //                         ),
// //                         SizedBox(height: 20),
// //                         Row(
// //                           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                           children: [
// //                             IconButton(
// //                               icon: Icon(Icons.settings_suggest, color: Colors.white70),
// //                               onPressed: () {},
// //                             ),
// //                             IconButton(
// //                               icon: Icon(Icons.tune, color: Colors.white70),
// //                               onPressed: () {},
// //                             ),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'dart:ui'; // Needed for BackdropFilter
// import 'anomaly_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.black,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<String> users = List.generate(
//     5,
//     (index) => 'User_${(index + 1).toString().padLeft(3, '0')}',
//   );
//   String? selectedUser;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//               'https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
//             ),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//               Colors.black.withOpacity(0.7),
//               BlendMode.darken,
//             ),
//           ),
//         ),
//         child: ClipRect(
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//             child: SafeArea(
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     stops: const [0.3, 0.6, 0.9],
//                     colors: [
//                       Colors.transparent,
//                       Colors.black.withOpacity(0.8),
//                       Colors.black.withOpacity(0.9),
//                     ],
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 20.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.arrow_back_ios, color: Colors.white),
//                               onPressed: () {},
//                             ),
//                             IconButton(
//                               icon: Icon(Icons.settings, color: Colors.white),
//                               onPressed: () {},
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Form Analysis",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 32,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1.2,
//                               ),
//                             ),
//                             SizedBox(height: 20),
//                             Container(
//                               padding: EdgeInsets.symmetric(horizontal: 16),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(15),
//                                 border: Border.all(color: Colors.white24),
//                               ),
//                               child: DropdownButtonHideUnderline(
//                                 child: DropdownButton<String>(
//                                   dropdownColor: Colors.black87,
//                                   hint: Text(
//                                     "Select User ID",
//                                     style: TextStyle(color: Colors.white70),
//                                   ),
//                                   value: selectedUser,
//                                   isExpanded: true,
//                                   icon: Icon(
//                                     Icons.arrow_drop_down_circle,
//                                     color: Colors.white70,
//                                   ),
//                                   items: users.map((user) {
//                                     return DropdownMenuItem(
//                                       value: user,
//                                       child: Row(
//                                         children: [
//                                           Icon(
//                                             Icons.person_outline,
//                                             color: Colors.white70,
//                                             size: 20,
//                                           ),
//                                           SizedBox(width: 10),
//                                           Text(
//                                             user,
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 16,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     setState(() {
//                                       selectedUser = value;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 30),
//                             Center(
//                               child: Container(
//                                 width: 70,
//                                 height: 70,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.white,
//                                 ),
//                                 child: IconButton(
//                                   icon: Icon(
//                                     Icons.camera_alt,
//                                     size: 32,
//                                     color: Colors.black87,
//                                   ),
//                                   onPressed: () {
//                                     if (selectedUser != null) {
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (_) => AnomalyScreen(
//                                             userId: selectedUser!,
//                                           ),
//                                         ),
//                                       );
//                                     }
//                                   },
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 20),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 IconButton(
//                                   icon: Icon(Icons.settings_suggest, color: Colors.white70),
//                                   onPressed: () {},
//                                 ),
//                                 IconButton(
//                                   icon: Icon(Icons.tune, color: Colors.white70),
//                                   onPressed: () {},
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[50],
//         fontFamily: 'Roboto',
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<Map<String, String>> familyMembers = [
//     {"name": "Dad", "role": "Father"},
//     {"name": "Mom", "role": "Mother"},
//     {"name": "User_001", "role": "Son"},
//     {"name": "Sarah", "role": "Daughter"},
//   ];
//   String? selectedMember;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.blue[700]!, Colors.blue[900]!],
//           ),
//         ),
//         child: SafeArea(
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Card(
//                 elevation: 8,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(24.0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(
//                         Icons.family_restroom,
//                         size: 80,
//                         color: Colors.blue[700],
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "Family Fitness Hub",
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue[900],
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         "Select your profile to get personalized\nhealth recommendations",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.grey[600],
//                           fontSize: 14,
//                         ),
//                       ),
//                       SizedBox(height: 30),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[100],
//                           borderRadius: BorderRadius.circular(15),
//                           border: Border.all(color: Colors.blue[200]!),
//                         ),
//                         child: DropdownButtonHideUnderline(
//                           child: DropdownButton<String>(
//                             hint: Text("Choose Family Member"),
//                             value: selectedMember,
//                             isExpanded: true,
//                             icon: Icon(Icons.arrow_drop_down_circle, color: Colors.blue[700]),
//                             items: familyMembers.map((member) {
//                               return DropdownMenuItem(
//                                 value: member["name"],
//                                 child: Row(
//                                   children: [
//                                     Icon(Icons.person, color: Colors.blue[700], size: 20),
//                                     SizedBox(width: 10),
//                                     Text(
//                                       "${member["name"]} (${member["role"]})",
//                                       style: TextStyle(color: Colors.black87),
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             }).toList(),
//                             onChanged: (value) {
//                               setState(() {
//                                 selectedMember = value;
//                               });
//                             },
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 24),
//                       ElevatedButton(
//                         onPressed: selectedMember == null
//                             ? null
//                             : () {
//                                 // Navigate to the recommendation screen
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (_) => RecommendationScreen(userName: selectedMember!),
//                                   ),
//                                 );
//                               },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.blue[700],
//                           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           elevation: 3,
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Icon(Icons.fitness_center),
//                             SizedBox(width: 8),
//                             Text(
//                               "Get Recommendations",
//                               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // This is a placeholder for the recommendation screen
// class RecommendationScreen extends StatelessWidget {
//   final String userName;
  
//   const RecommendationScreen({Key? key, required this.userName}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("$userName's Recommendations"),
//       ),
//       body: Center(
//         child: Text("Recommendations coming soon..."),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'anomaly_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<String> users = ["User_001", "User_002", "User_003", "User_004", "User_005"];
//   String? selectedUser;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Select User")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton<String>(
//               hint: Text("Select User"),
//               value: selectedUser,
//               items: users.map((user) {
//                 return DropdownMenuItem(value: user, child: Text(user));
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedUser = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: selectedUser == null
//                   ? null
//                   : () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => AnomalyScreen(userId: selectedUser!),
//                         ),
//                       );
//                     },
//               child: Text("Fetch Data"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }     


// import 'package:flutter/material.dart';
// import 'anomaly_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//         scaffoldBackgroundColor: Colors.grey[100],
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<String> users = ["User_001", "User_002", "User_003", "User_004", "User_005"];
//   String? selectedUser;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Select User"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Card(
//             elevation: 6,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     "Choose a User",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 15),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 12),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: Colors.grey),
//                     ),
//                     child: DropdownButtonHideUnderline(
//                       child: DropdownButton<String>(
//                         hint: Text("Select User"),
//                         value: selectedUser,
//                         isExpanded: true,
//                         items: users.map((user) {
//                           return DropdownMenuItem(value: user, child: Text(user));
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() {
//                             selectedUser = value;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: selectedUser == null
//                         ? null
//                         : () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (_) => AnomalyScreen(userId: selectedUser!),
//                               ),
//                             );
//                           },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.deepPurple,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     ),
//                     child: Text("Fetch Data", style: TextStyle(fontSize: 16)),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }












// import 'package:flutter/material.dart';
// import 'anomaly_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//         fontFamily: 'Poppins',
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State {
//   List users = ["me", "Father", "User_003", "User_004", "User_005"];
//   String? selectedUser;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Gradient Background
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.deepPurple.shade800, Colors.deepPurple.shade400],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),

//           // Page Content
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 50),

//               // Welcome Text
//               Text(
//                 "Welcome, Chandan!",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),

//               SizedBox(height: 30),

//               // Centered Logo
//               Center(
//                 child: Image.asset(
//                   'assets/logo.png',
//                   height: 100, // Increased size
//                   width: 100,
//                 ),
//               ),

//               SizedBox(height: 40),

//               // Centering the User Selection Box
//               Expanded(
//                 child: Center(
//                   child: Container(
//                     padding: EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.2),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(color: Colors.white.withOpacity(0.5)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 10,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           "Select a User",
//                           style: TextStyle(
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 15),

//                         // Dropdown Selection
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 12),
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.8),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: DropdownButtonHideUnderline(
//                             child: DropdownButton(
//                               hint: Text("Choose User"),
//                               value: selectedUser,
//                               isExpanded: true,
//                               style: TextStyle(color: Colors.black),
//                               items: users.map((user) {
//                                 return DropdownMenuItem(
//                                   value: user,
//                                   child: Text(user),
//                                 );
//                               }).toList(),
//                               onChanged: (value) {
//                                 setState(() {
//                                   selectedUser = value as String?;
//                                 });
//                               },
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20),

//                         // Fetch Data Button
//                         ElevatedButton(
//                           onPressed: selectedUser == null
//                               ? null
//                               : () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (_) =>
//                                           AnomalyScreen(userId: selectedUser!),
//                                     ),
//                                   );
//                                 },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             foregroundColor: Colors.deepPurple,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             padding:
//                                 EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                             elevation: 5,
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(Icons.analytics_outlined),
//                               SizedBox(width: 8),
//                               Text(
//                                 "Fetch Data",
//                                 style: TextStyle(fontSize: 16),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'anomaly_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List users = ["me", "Father", "Mother", "Grandfather", "Daughter"];
  String? selectedUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo4.jpg'), // Ensure the image is added to assets
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Page Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              // Welcome Text
              Text(
                "Welcome, Chandan!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 30),

              // Centered Logo
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 100,
                  width: 100,
                ),
              ),

              SizedBox(height: 40),

              // User Selection Box
              Expanded(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Select a User",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 15),

                        // Dropdown Selection
                        Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/logo4.jpg'), // Ensure the image is added to assets
                                  fit: BoxFit.cover, // Adjusts the image to cover the full background
                                ),
                              ),
                            child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text("Choose User"),
                              value: selectedUser,
                              isExpanded: true,
                              style: TextStyle(color: Colors.black),
                              items: users.map((user) {
                                return DropdownMenuItem(
                                  value: user,
                                  child: Text(user),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedUser = value as String?;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Fetch Data Button
                        ElevatedButton(
                          onPressed: selectedUser == null
                              ? null
                              : () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          AnomalyScreen(userId: selectedUser!),
                                    ),
                                  );
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding:
                                EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            elevation: 5,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.analytics_outlined),
                              SizedBox(width: 8),
                              Text(
                                "Fetch Data",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}