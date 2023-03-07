

import 'package:flutter/material.dart';
import 'package:oppo/home_Page.dart';
import 'package:oppo/home_page.dart';
import 'package:oppo/profile_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      
      home: const RootPage(),
      
      
    );
  }
}
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int CurrentPage = 0;
  List<Widget> Pages =  const[
   // HomePage(),
    ProfilePage()
  ];
  

  
  
  
    
    
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Flutter'),
      ),
      body: Pages[CurrentPage],
    
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('Floating Action Button');
        },
        
        child: const Icon(Icons.add),
    ),

    bottomNavigationBar: NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
    ],
    onDestinationSelected: (int index){
      setState(() {
        CurrentPage = index;
        
        
        
      });
      
    },
    selectedIndex:  CurrentPage,
    
    ),
    );
  }
}