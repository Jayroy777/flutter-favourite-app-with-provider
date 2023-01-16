import 'package:favouriteproviderapp/providers/favouriteprovider.dart';
import 'package:favouriteproviderapp/screens/favourite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Main build method is called");
    return Scaffold(
      appBar: AppBar(title: const Text("Jayho"), actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Favourite()));
          },
          tooltip: "Go to Favourite Screen",
          icon: const Icon(Icons.favorite),
          color: Colors.red,
        )
      ]),
      body: SafeArea(
          child: Consumer<FavouriteProvider>(
            builder: ((context, value, child) {
              debugPrint("This Widget has only Build");
              return ListView.builder(
                  itemCount: 25,
                  itemBuilder: (context, index) => ListTile(
                    onTap: (){
                      value.favList.contains("Item $index".toString())? value.remFav("Item $index".toString()):value.addFav("Item $index".toString());
                    },
                    title: Text("Item $index"),
                    trailing: value.favList.contains("Item $index".toString())?const Icon(Icons.favorite_rounded,color: Colors.red):Icon(Icons.favorite_border_outlined),
                  ));
            }),
          )),
    );
  }
}
