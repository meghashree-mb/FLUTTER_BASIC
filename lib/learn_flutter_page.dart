import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon:const Icon (Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: (){debugPrint('Actions');
              },
               icon:  const Icon(
                Icons.info_outline,
                ),
                ),
                ],
        ),
        body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('image/aa.jpg'),
            const SizedBox(
              height: 10,
              ),
            const Divider(
              color: Colors.black,
              ),
              Container(
                margin:const EdgeInsets.all(10.0),
                padding:const EdgeInsets.all(10.0), 
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(

                
                child: const Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                    ),
                    ),
                ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:isSwitch ? Colors.green: Colors.blue,
                  ),
                  onPressed: (){
                    debugPrint('Elevated Button');
                    },
                     child:  const Text('Elevated Button'),
                     ),
                     OutlinedButton(
                  onPressed: (){
                    debugPrint('Outlined Button');
                    },
                     child:  const Text('Outlined Button'),
                     ),
                     TextButton(
                  onPressed: (){
                    debugPrint('Text Button');
                    },
                     child:  const Text('Text Button'),
                     ),
                     GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap:(){
                        debugPrint('This is the row');
                      },
                      child:Row(

                      
                     
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:const [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.blue,
                      ),
                      Text('Row widget'),

                      Icon(
                        Icons.local_fire_department,
                        color: Colors.blue,
                      ),                        
                       ],
                       ),
                     ),
                     Switch(
                      value: isSwitch, 
                      onChanged: (bool newbool){
                        setState(() {
                          isSwitch = newbool;
                          
                        });
                      
                     }),
                     Checkbox(
                      value: isCheckbox, 
                      onChanged: (bool? newbool){
                      setState(() {
                        isCheckbox = newbool;
                      });
                     }),
                     Image.network('https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg')
        

                     
                     
                     


          ],
     ),
        )
    );
    
  }
}