import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String api= "AsHJPEVykI1vFwH70U4BWV6CFrxvMFzTmnp5hNRLRMtYZaKlh2yurm1A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Wallpapers", style: TextStyle(
          color: Colors.black,
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 2,childAspectRatio: 2/3,mainAxisSpacing: 2), itemBuilder: (context,index){
              return Container(
                color: Colors.black,
              );
            }),

          ),),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Center(
              child: Text(
                "Load More",
                style: TextStyle(
                    color: Colors.white,fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
