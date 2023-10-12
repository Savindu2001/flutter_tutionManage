import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
           child: ListView(
          padding: EdgeInsets.zero,
          children:  [

            // * Drawer Header

            const DrawerHeader(
              decoration: BoxDecoration(
                color:Colors.transparent,
                image: DecorationImage(
                  image: AssetImage('lib/assets/mainbg.png'),
                  fit: BoxFit.cover
                ),

                
            
              ),
              child: Text('Welcome to,', style: TextStyle(fontWeight: FontWeight.w800),),
                
              ) ,

              // * Drawer items

              Card(
                child: ListTile(
                  leading:const Icon(Icons.home,),
                  title:const Text('H O M E', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),),
                  onTap: () {
                    Navigator.pushNamed(context, '/homepage');
                    Navigator.pop(context, '/homepage');
                  },
                 ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.verified_user_sharp,),
                  title: const Text('STUDENTS ADD ', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),),
                  onTap: () {
                    Navigator.pushNamed(context, '/studentadd');
                  },
                 ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.card_membership,),
                  title: const Text('CARD MARK', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),),
                  onTap: () {
                    Navigator.pushNamed(context, '/cardmark');
                  },
                 ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.mark_chat_read,),
                  title: const Text('ATTENDANCE', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),),
                  onTap: () {
                    Navigator.pushNamed(context, '/attendance');
                  },
                 ),
              ),

              Card(
                child: ListTile(
                  leading:const  Icon(Icons.money,),
                  title: const Text('PAYMENTS', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),),
                  onTap: () {
                    Navigator.pushNamed(context, '/payemtsdata');
                  },
                 ),
              ),

              Card(
                child: ListTile(
                  leading: const Icon(Icons.report,),
                  title: const Text('REPORTS', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),),
                  onTap: () {
                    Navigator.pushNamed(context, '/report');
                  },
                 ),
                 
              ), 

             
              

              ListTile(
                leading: const Icon(Icons.flutter_dash,),
                title:const  Text('ABOUT DEVELOPER', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),),
                subtitle:const Text('APP_VERSION_1.0.1'),
                onTap: () {
                    Navigator.pushNamed(context, '/developer');
                  },
                
               ),     
              
          ],
        ),
    );
  }
}