
import 'package:app_login/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Productos'))
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ( BuildContext context , int index) => const  ProductCard()  
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){}
      )
    );
  }
}