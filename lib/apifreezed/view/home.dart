import 'package:api4/apifreezed/controller/provider2.dart';
import 'package:api4/apifreezed/model/apimodel.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

const imagePath = 'https://image.tmdb.org/t/p/original';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 31, 31),
      appBar: AppBar(
        title: const Text(
          'KitKat Movie',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 88, 90, 94),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: switch (ref.watch(fetchMoviesProvider)) {
        AsyncData(:final value) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    color: const Color.fromARGB(255, 42, 47, 51),
                    child: ListView.builder(
                      itemCount: value!.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHerp(
                                              modelData: value[index],
                                            )));
                              },
                              child: Container(
                                height: 100,
                                color: Colors.grey.shade800,
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image.network(
                                        '$imagePath${value[index].poster_path}',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      child: Center(
                                        child: Text(
                                          value[index].title,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        AsyncError(:final error) => Text('Error: $error'),
        _ => const CircularProgressIndicator(),
      },
    );
  }
}

class MyHerp extends StatelessWidget {
  final ApiModel modelData;
  const MyHerp({
    super.key,
    required this.modelData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 31, 31),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.black87,
            child: Image.network("$imagePath${modelData.poster_path}"),
          )
        ],
      ),
    );
  }
}
