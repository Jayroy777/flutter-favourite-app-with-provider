import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favouriteprovider.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Jayho Favourite"),actions: [IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.home_filled))]),
      body: SafeArea(child:  Consumer<FavouriteProvider>(
        builder: ((context, value, child){
          return ListView.builder(
              itemCount: value.favList.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(value.favList[index].toString()),
                trailing: const Icon(Icons.favorite_rounded,color: Colors.red,),
              ));
        }),
      )),
    );
  }
}
