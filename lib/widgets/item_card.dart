import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  //todo 1: buat variabel
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    //todo 6: routing ke detail screen

    return Card(
      //todo 2: set parameter shape, margin dan elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(4),
      elevation: 4, //untuk memberikan efek bayangan pada card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //todo 3: image widget
          Expanded(
            //todo 7: heroAnimation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //todo 4: text widget (nama candi)
          Padding(  
            padding: const EdgeInsets.only(left:16, top:8),
            child: Text(candi.name, 
            style: TextStyle(
              fontSize: 15, 
              fontWeight: FontWeight.bold),),
          ),
          //todo 5: text widget (tipe candi)
          Padding(
            padding: const EdgeInsets.only(left:16, top:4),
            child: Text(candi.type,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ]
      ),
    );
  }
}