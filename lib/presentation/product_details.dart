
import 'package:flutter/material.dart';
import 'package:machine_test/presentation/home_screen.dart';

import 'edit_page.dart';

class ProductDetailsPage extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  // final String category;
  final double price;
  final String image;

  const ProductDetailsPage({super.key, required this.title, required this.description, required this.price, required this.id, required this.image,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,color: Colors.black,))],),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 200,
                height: 200,
                child: ClipOval(
                  child: Image.network(
                    image,
                    // 'https://example.com/your-image-url.jpg', // replace with your image URL
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover, // You can adjust the fit if necessary
                  ),
                ),
              ),
            ),
           const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const SizedBox(width: 8,),
                Text(price.toString(),style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),),
              ],
            ),
           const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const SizedBox(width: 8,),
              Expanded(
                child: Text(title,maxLines: 2,
                  overflow: TextOverflow.ellipsis,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              )
              // TextWidget(text: title, fontSize: 30, fontWeight: FontWeight.bold),
              ],

            ),
           const SizedBox(height: 30,),
            TextWidget(text: description, fontSize: 20, fontWeight: FontWeight.normal),
           const SizedBox(height: 50,),ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (builder)=>EditProductPage(currentDescription: description,currentPrice: price,currentTitle: title,id: id,)));
            }, child:const Text("edit"))

          ],
        ),
      ),
    );
  }
}
