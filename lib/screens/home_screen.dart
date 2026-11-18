import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // todo 1: buat appbar dengan title wisata candi
        appBar: AppBar(title: Text("Wisata Candi")),
        //todo 2: buat gridview builder
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //dalam 1 web ada 2 kolom
          ),
          padding: EdgeInsets.all(8), //jarak antar grid
          itemCount: candiList.length,
          itemBuilder: (context, index){
            Candi candi = candiList[index];
            //todo 3: buat itemcard widget, panggil (return di sini)
            //sementara ItemCard belum ada set return null
            return ItemCard(candi: candi);
          } 
        ),
      );
  }
}