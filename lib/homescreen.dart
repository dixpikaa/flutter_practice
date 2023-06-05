import 'package:basic_app/new_page.dart';
import 'package:basic_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Welcome GIS "),
      ),
      body: Stack(
        children: [
          Container(
            padding:const EdgeInsets.only(left:35,top:130 ,right: 40),
            child:ElevatedButton(onPressed:  (){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>const NextPage()));
            },
             child: const Row(
             mainAxisSize: MainAxisSize.min,
               children: [
                  Text("Go to Next Page" ),
                  Icon(Icons.arrow_back)
               ],
             ),
             
             )
          ),
          
          Center(
            child: Text(
              "You have pushed this button this many times"
              'Count: ${context.watch<Counter>().count}',
                style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
      floatingActionButton:
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      FloatingActionButton(onPressed: () => context.read< Counter>().Decrement(),
      tooltip: "Decrement",
      child: const Icon(Icons.remove),
      ),
      const SizedBox(height: 50,),
      FloatingActionButton(onPressed: () =>context.read <Counter>().Clear(),
      tooltip: "Clear",
      child: const Icon(Icons.clear)),
       const SizedBox(height: 50,),
      FloatingActionButton(onPressed: () =>context.read<Counter>().Incremet(),
      tooltip: "Add",
      child: const Icon(Icons.add)),

      ],)
      
  
    );
  }
}
