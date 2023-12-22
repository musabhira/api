import 'package:api4/apifreezed/controller/provider2.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SlidersPage extends ConsumerWidget {
  static const String path = "lib/src/pages/misc/sliders.dart";
  final imagePath = 'https://image.tmdb.org/t/p/original';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 32, 34),
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
      body: Container(
        height: 34,
        child: Column(
          children: [
            switch (ref.watch(fetchMoviesProvider)) {
              AsyncData(:final value) => ListView.builder(
                  itemCount: value!.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
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
                            Text(
                              value[index].title,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              AsyncError(:final error) => Text('Error: $error'),
              _ => const CircularProgressIndicator(),
            },
          ],
        ),
      ),
    );
  }
}
