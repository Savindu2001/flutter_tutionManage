import 'package:flutter/material.dart';
import 'package:tution_manage/components/sidebar.dart';
import 'package:tution_manage/screens/pageview1.dart';
import 'package:tution_manage/screens/pageview2.dart';
import 'package:tution_manage/screens/pageview3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final  controller = PageController();

    return   Scaffold(


      // * Main AppBar Design
      // ? This is Main AppBar And it is showing on home page

      appBar: AppBar(
        title: const Text('Tution Manage App '),
        actions: [
          IconButton(
            icon: const  Icon(Icons.device_hub),
            onPressed: (){
              Navigator.pushNamed(context, '/contact');
            },
          )
        ],
      ),

      // * Main Side drawer Design

      drawer: const SideBar(),

      // * End Drawer 

      // * Start Body Section

      body: Column(
         children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              children:const [
                PageView1(),
                PageView2(),
                PageView3(),
              ],
            ),
          ),

          Container(
            height: 100,
            width: double.infinity,
            color: Colors.black45,
          )
         ],
      ),
    );
  }
}
 