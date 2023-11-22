import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//jika ingin mengubah center//
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          Column(
            children:[
          Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/persegi.png",)),
          Expanded(child: CustomMenu(title: "Persegi panjang", imageAsset: "assets/persegipjg.png",)),
          ],
          ),

          Column(
            children:[
          Expanded(child: CustomMenu(title: "jajar genjang", imageAsset: "assets/jajar.png",)),
          Expanded(child: CustomMenu(title: "lingkaran", imageAsset: "assets/lingkaran.png",)),
          ],
     ),
      ],
    )
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 16),
        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(15)),
        

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset, height: 155, width: 200,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: TextStyle(color: Colors.white)),
            ),
          ],
        ));
  }
}
