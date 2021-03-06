import 'package:e_commerce_app/Utils/api.dart';
import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  String name;
  String price;
  String url;
  String id;
  bool isFavorite;
  VoidCallback cartCallBack;
  VoidCallback favoriteCallBack;

  GridViewItem({
    required this.name,
    required this.price,
    required this.url,
    required this.id,
    required this.isFavorite,
    required this.cartCallBack,
    required this.favoriteCallBack,

});

  @override
  Widget build(BuildContext context) {
    print('ImageUrl $url');
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          margin: const EdgeInsets.all(5),
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                // color: Colors.deepOrangeAccent,
                child: Image.network("${API.productImageUrl}$url"),

              ),
              Container(
                height: 30,
                // color: Colors.green,
                child: Center(child: Text(name, style: const TextStyle(fontSize: 12), maxLines: 1,)),
              ),
              Container(
                height: 30,
                // color: Colors.cyan,
                child: Text("\$$price"),
              ),
            ],
          ),
        ),
         Positioned(
            left: 10,
            top: 10,
            child: IconButton(onPressed: favoriteCallBack, icon: Icon(isFavorite==true?Icons.favorite:Icons.favorite_border))),

         Positioned(
            right: 10,
            top: 10,
            child: IconButton(onPressed: cartCallBack, icon: Icon(Icons.shopping_cart_outlined))),

      ],
    );
  }
}
