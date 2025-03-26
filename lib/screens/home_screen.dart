import 'package:flutter/material.dart';
import 'package:store_app/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('New Trend',style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart,color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16,top: 60),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 1.4,
            mainAxisSpacing: 80,
            ),
          itemBuilder: (context,index){
            return  CustomCard();
          },
          ),
      )
    );
  }
} 

