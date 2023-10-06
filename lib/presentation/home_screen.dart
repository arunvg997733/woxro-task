import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../infrastucture/function.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController directorName = TextEditingController();

  TextEditingController movieName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                 Expanded(
                  flex: 1,
                   child: TextField(
                      controller: directorName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder()
                      ),
                                 
                    ),
                 ),
                 Expanded(
                  flex: 1,
                   child: TextField(
                      controller: movieName,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder()
                      ),
                                 
                    ),
                 ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(onPressed: () {
                    setState(() {
                      addNewMovie(
                      directorName.text,
                      movieName.text
                    );
                    });
                  }, child: const Text('Add')),
                ),

                
              ],
            ),
            Expanded(
                  child: ListView.separated(itemBuilder: (context, index) {
                    final data = movieList[index];
                    return Row(children: [
                       Expanded(child: Text(data.directorName)),
                       Expanded(child: Text(data.movieName)),
                       ElevatedButton(onPressed: () {
                         setState(() {
                           removie(index);
                         });
                       }, child: Text('remove'))
                    ],);
                  }, separatorBuilder: (context, index) {
                    return Divider();
                  }, itemCount: movieList.length),
                )
          ],
      
        ),
      ),
    );
  }
}