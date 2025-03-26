import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              // height: 140,
              // width: 220,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!,
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Card(
                elevation: 10,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HandBag LV",style: TextStyle(fontSize: 16,color: Colors.grey),),
                      const SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r"$225 ",style: TextStyle(fontSize: 16,color: Colors.black),),
                          Icon(Icons.favorite,color: Colors.red,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              
              top: -55,
              left: 60,
              right: 0,
              child: Image.network("https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",height: 100,width: 100,),
            ),
          ],
        );
  }
}