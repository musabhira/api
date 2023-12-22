import 'package:api4/apiconnect/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('oman'),
        backgroundColor: const Color.fromARGB(255, 255, 220, 220),
      ),
      body: ref.watch(getpostProvider).when(
            data: (data) => ListView.builder(
              itemCount: data!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 10,
                  height: 230,
                  color: Colors.amberAccent,
                  child: Row(
                    children: [
                      Image.network(
                        data[index].image,
                        fit: BoxFit.fitHeight,
                      ),
                      Text(data[index].title),
                      SizedBox(
                        width: 20,
                      ),
                      Text(data[index].price.toString())
                    ],
                  ),
                ),
              ),
            ),
            error: ((error, stackTrace) => const Text('error')),
            loading: () => LinearProgressIndicator(),
          ),
    );
  }
}
