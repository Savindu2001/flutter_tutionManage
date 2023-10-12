// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     return  Scaffold(
      
//       // appBar: AppBar(),

//       // * Silver AppBar * // 

      
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             backgroundColor: Colors.red[600],
//             pinned: true,
//             floating: true,
//             expandedHeight: 160.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: const Text('Tution Manage'),
//               background: Image.asset(
//                 'lib/assets/silverbg.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),

//           ),

//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return ListTile(
//                   title: Text('Item ${1+index}'),
//                 );
//               },
//               childCount: 20,
//               ),
//             ),
//         ],
//       ),

//     );
//   }
// }